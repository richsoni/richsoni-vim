local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("zk").setup({
  picker = "fzf_lua",
  lsp = {
    config = {
      cmd          = { "zk", "lsp" },
      filetypes    = { "markdown" },
      capabilities = capabilities,
    },
    auto_attach = {
      enabled   = true,
      filetypes = { "markdown" },
    },
  },
})
