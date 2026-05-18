require("obsidian").setup({
  legacy_commands = false,
  workspaces = {
    {
      name = "auto",
      path = function()
        return vim.fs.root(0, ".obsidian")
      end,
    },
  },
  completion = {
    nvim_cmp = true,
    min_chars = 2,
    create_new = true,
  },
  picker = {
    name = "fzf-lua",
  },
  ui = { enable = false },
  footer = { enabled = false },
  callbacks = {
    enter_note = function(note)
      vim.keymap.set("n", "gd", "<cmd>Obsidian follow_link<cr>", {
        buffer = note.bufnr,
        desc = "Obsidian: follow link under cursor",
      })

      -- Override the sources obsidian.nvim's inject_sources() just set.
      -- Only keep sources that explicitly opt in via trigger characters
      -- ([ for refs/new, # for tags). No generic word/buffer/LSP completion
      -- in vault notes.
      require("cmp").setup.buffer({
        sources = {
          { name = "obsidian_refs" },
          { name = "obsidian_tags" },
          { name = "obsidian_new" },
        },
      })
    end,
  },
})
