-- Make Mason-installed binaries available to LSP commands.
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if ok then
  capabilities = vim.tbl_deep_extend("force", capabilities, cmp_lsp.default_capabilities())
end

local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd",         vim.lsp.buf.definition,     opts)
  vim.keymap.set("n", "K",          vim.lsp.buf.hover,           opts)
  vim.keymap.set("n", "gr",         vim.lsp.buf.references,      opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,          opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,     opts)
  vim.keymap.set("n", "[d",         vim.diagnostic.goto_prev,    opts)
  vim.keymap.set("n", "]d",         vim.diagnostic.goto_next,    opts)
end

vim.lsp.config("ts_ls", {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.enable("ts_ls")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})
