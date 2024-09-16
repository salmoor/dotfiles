-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
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

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "neovim/nvim-lspconfig",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "tpope/vim-surround",
    "tpope/vim-eunuch",
    "tpope/vim-unimpaired",
    "tpope/vim-repeat",
    "nelstrom/vim-visual-star-search",
    "rebelot/kanagawa.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    "github/copilot.vim",
    "tpope/vim-fugitive",
    "mbbill/undotree",
    "sindrets/diffview.nvim",
    "sheerun/vim-polyglot",
    "numToStr/Comment.nvim",
    "nelstrom/vim-visual-star-search",
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    "lewis6991/gitsigns.nvim",
    -- import your plugins
    { import = "alem.plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

