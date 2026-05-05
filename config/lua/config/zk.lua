require("zk").setup({
  picker = "fzf_lua",
  lsp = {
    config = {
      cmd = { "zk", "lsp" },
    },
    auto_attach = {
      enabled = true,
      filetypes = { "markdown" },
    },
  },
})
