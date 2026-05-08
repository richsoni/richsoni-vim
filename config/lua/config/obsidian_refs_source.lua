-- nvim-cmp source that completes [[wiki-links]] referenced anywhere in the vault,
-- including links whose target file does not yet exist.
local M = {}

M.new = function()
  return setmetatable({}, { __index = M })
end

M.get_keyword_pattern = function()
  return [=[\%(^\|[^\[]\)\zs\[\{1,2}[^\]]\+\]\{,2}]=]
end

M.get_trigger_characters = function()
  return { "[" }
end

M.complete = function(_, request, callback)
  local ok, refs = pcall(require, "obsidian.completion.refs")
  if not ok or not (Obsidian and Obsidian.dir) then
    callback({ isIncomplete = false, items = {} })
    return
  end

  local can_complete, query, insert_start, insert_end = refs.can_complete(request)
  if not can_complete or not query or #query < 2 then
    callback({ isIncomplete = true, items = {} })
    return
  end

  -- Escape query for use in a ripgrep literal pattern
  local escaped = query:gsub("([%.%+%*%?%(%)%[%]%{%}%^%$%\\%|])", "\\%1")
  local pattern = string.format([=[\[\[%s[^\]|#]*]=], escaped)
  local vault_dir = tostring(Obsidian.dir)
  local cursor_row = request.context.cursor.row - 1
  local seen = {}
  local items = {}

  vim.fn.jobstart(
    { "rg", "-io", "--no-filename", "--no-heading", pattern, vault_dir },
    {
      stdout_buffered = true,
      on_stdout = function(_, data)
        for _, line in ipairs(data or {}) do
          local title = line:match("%[%[(.+)$")
          if title then
            title = vim.trim(title)
            if title ~= "" and not seen[title:lower()] then
              seen[title:lower()] = true
              items[#items + 1] = {
                label = string.format("[[%s]]", title),
                filterText = "[[" .. title,
                sortText = title,
                kind = vim.lsp.protocol.CompletionItemKind.Reference,
                textEdit = {
                  newText = string.format("[[%s]]", title),
                  range = {
                    start = { line = cursor_row, character = insert_start },
                    ["end"] = { line = cursor_row, character = insert_end + 1 },
                  },
                },
              }
            end
          end
        end
      end,
      on_exit = function()
        callback({ isIncomplete = false, items = items })
      end,
    }
  )
end

return M
