local find_cache = {}

local function find_in_vault(vault_root, name)
  local cache = find_cache[vault_root]
  if cache and cache[name] then return cache[name] end

  local matches = vim.fs.find(name, {
    path = vault_root,
    type = "file",
    limit = 1,
  })
  local hit = matches[1]
  if hit then
    find_cache[vault_root] = find_cache[vault_root] or {}
    find_cache[vault_root][name] = hit
  end
  return hit
end

require("snacks").setup({
  image = {
    enabled = true,
    resolve = function(path, src)
      local ok, api = pcall(require, "obsidian.api")
      if not ok or not api.path_is_note(path) then return end

      local vault_root = vim.fs.root(path, ".obsidian")
      if vault_root then
        local hit = find_in_vault(vault_root, src)
        if hit then return hit end
      end

      local resolved = api.resolve_attachment_path(src)
      if resolved and vim.fn.filereadable(resolved) == 1 then
        return resolved
      end
    end,
  },
})
