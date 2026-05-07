require("obsidian").setup({
  legacy_commands = false,
  workspaces = {
    {
      name = "auto",
      path = function()
        return vim.fs.root(0, ".obsidian") or vim.fn.getcwd()
      end,
    },
  },
  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },
  picker = {
    name = "fzf-lua",
  },
  ui = { enable = false },
})
