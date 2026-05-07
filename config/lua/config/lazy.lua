-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- General
    { "airblade/vim-gitgutter" },
    { "kshenoy/vim-signature" },
    { "tpope/vim-rsi" },
    { "tpope/vim-projectionist" },
    { "richsoni/vim-ecliptic" },
    { "bogado/file-line" },
    { "godlygeek/tabular" },
    { "tpope/vim-abolish" },
    { "tpope/vim-commentary" },
    { "tpope/vim-repeat" },
    { "tpope/vim-surround" },
    { "tpope/vim-speeddating" },
    { "alvan/vim-closetag" },
    { "benmills/vimux" },

    -- Writing
    { "reedes/vim-lexical" },
    { "tpope/vim-dispatch" },
    { "tpope/vim-vinegar" },
    { "tpope/vim-eunuch" },
    { "tpope/vim-scriptease" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-sensible" },
    { "tpope/vim-unimpaired" },

    -- Language
    { "chrisbra/csv.vim" },
    { "leafgarland/typescript-vim" },
    { "moll/vim-node" },
    { "tpope/vim-haml" },
    { "tpope/vim-markdown" },
    { "vim-ruby/vim-ruby" },

    -- Colors
    { "twerth/ir_black" },

    -- Neovim-only: linting
    { "dense-analysis/ale" },

    -- Neovim-only: fuzzy finder
    {
      "ibhagwan/fzf-lua",
      config = function() require("config.fzf") end,
    },

    -- Neovim-only: obsidian notes
    {
      "obsidian-nvim/obsidian.nvim",
      ft = "markdown",
      dependencies = { "ibhagwan/fzf-lua" },
      config = function() require("config.obsidian") end,
    },

    -- Neovim-only: LSP install manager + config
    { "williamboman/mason.nvim", config = true },
    {
      "hrsh7th/cmp-nvim-lsp",
      config = function() require("config.lsp") end,
    },

    -- Neovim-only: completion
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        { "L3MON4D3/LuaSnip", version = "v2.*" },
        "saadparwaiz1/cmp_luasnip",
      },
      config = function() require("config.cmp") end,
    },

    -- Neovim-only: snacks (used for image rendering in obsidian notes)
    {
      "folke/snacks.nvim",
      priority = 1000,
      lazy = false,
      config = function() require("config.snacks") end,
    },

    -- Neovim-only: syntax
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSInstall typescript tsx javascript json lua markdown markdown_inline",
      config = function() require("config.treesitter") end,
    },
  },
  install = { missing = true },
  checker = { enabled = false },
})
