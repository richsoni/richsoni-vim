local fzf = require("fzf-lua")

fzf.setup({
  winopts = {
    height  = 0.3,
    width   = 1.0,
    row     = 1.0,
    col     = 0.0,
    border  = "none",
    preview = { hidden = "hidden" },
  },
})

vim.keymap.set("n", "<C-p>", fzf.files, { desc = "Find files" })
