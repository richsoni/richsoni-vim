local fzf = require("fzf-lua")

fzf.setup({ "default" })

vim.keymap.set("n", "<C-p>", fzf.files, { desc = "Find files" })
