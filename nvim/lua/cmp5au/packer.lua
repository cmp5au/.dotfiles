-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('EdenEast/nightfox.nvim')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('ThePrimeagen/harpoon')
  use('ThePrimeagen/vim-be-good')
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use('mfussenegger/nvim-dap')
  use('mfussenegger/nvim-dap-python')
  use('neovim/nvim-lspconfig') -- Colection of configurations for built-in LSP client
  use('hrsh7th/nvim-cmp') -- Autocompletion plugin
  use('hrsh7th/cmp-nvim-lsp') -- LSP source for nvim-cmp
  use('saadparwaiz1/cmp_luasnip') -- Snippets source for nvim-cmp
  use('L3MON4D3/LuaSnip') -- Snippets plugin
  use('williamboman/mason-lspconfig.nvim')
  end)
