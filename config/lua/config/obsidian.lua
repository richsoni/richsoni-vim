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
  callbacks = {
    enter_note = function(note)
      vim.keymap.set("n", "gd", "<cmd>Obsidian follow_link<cr>", {
        buffer = note.bufnr,
        desc = "Obsidian: follow link under cursor",
      })
    end,
  },
})
