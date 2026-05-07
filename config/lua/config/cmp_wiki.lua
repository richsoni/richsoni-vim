local M = {}

local cache = {}
local CACHE_TTL_MS = 5000

M.new = function()
  return setmetatable({}, { __index = M })
end

M.get_trigger_characters = function()
  return { "[" }
end

M.is_available = function()
  return vim.bo.filetype == "markdown"
end

local function get_root(bufpath)
  if bufpath == "" then return nil end
  return vim.fs.root(bufpath, { ".zk", ".obsidian", ".git" })
end

local function build_items(stdout)
  local seen = {}
  local items = {}
  for line in (stdout or ""):gmatch("[^\r\n]+") do
    local inner = line:match("^%[%[(.-)%]%]$")
    if inner and inner ~= "" and not seen[inner] then
      seen[inner] = true
      table.insert(items, {
        label = inner,
        kind  = vim.lsp.protocol.CompletionItemKind.Reference,
      })
    end
  end
  return items
end

M.complete = function(self, params, callback)
  local bufpath = vim.api.nvim_buf_get_name(0)
  local root = get_root(bufpath)
  if not root then
    callback({ items = {}, isIncomplete = false })
    return
  end

  local now = vim.uv.now()
  local hit = cache[root]
  if hit and (now - hit.time) < CACHE_TTL_MS then
    callback({ items = hit.items, isIncomplete = false })
    return
  end

  vim.system(
    {
      "rg",
      "--no-filename",
      "--no-line-number",
      "-o",
      "-g", "*.md",
      "--",
      [=[\[\[[^\]]+\]\]]=],
      root,
    },
    { text = true },
    function(obj)
      local items = build_items(obj.stdout)
      cache[root] = { items = items, time = vim.uv.now() }
      vim.schedule(function()
        callback({ items = items, isIncomplete = false })
      end)
    end
  )
end

return M
