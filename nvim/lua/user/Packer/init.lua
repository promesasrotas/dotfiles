vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- ----------------------------
  -- ---       Packer         ---
  -- ----------------------------
	
  use {
    'wbthomason/packer.nvim'
  }
  
  -- ----------------------------
  -- ---        Core          ---
  -- ----------------------------

	use {
    -- Treesitter 
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/nvim-treesitter-refactor',
    'windwp/nvim-ts-autotag',
    'p00f/nvim-ts-rainbow',
    'folke/twilight.nvim',
    'windwp/nvim-autopairs',

  }
  
  use {
    -- Matchup
    'andymass/vim-matchup'
  }
  use {
    -- Zen mode
    'folke/zen-mode.nvim'
  }
  use {
    -- CMP & LSP 
    'neovim/nvim-lspconfig',
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'ray-x/cmp-treesitter',
    'saadparwaiz1/cmp_luasnip',
    'lukas-reineke/cmp-rg',
    'onsails/lspkind-nvim',
    'ray-x/lsp_signature.nvim',
    'tami5/lspsaga.nvim',
  }
  use {
    -- Terminal
    'akinsho/toggleterm.nvim'
  }
  use {
    -- Git signs
    'lewis6991/gitsigns.nvim'
  }
  use {
    -- Better scape
    'max397574/better-escape.nvim'
  }
  use {
    -- Notify
    'rcarriga/nvim-notify'
  }
  use {
    -- Trouble
    'folke/trouble.nvim'
  }
  use {
    -- Formatter
    'mhartington/formatter.nvim'
  }
  use {
    'VonHeikemen/fine-cmdline.nvim',
    'MunifTanjim/nui.nvim'
  }

  use {
    'folke/todo-comments.nvim'
  }

  use {
    'tpope/vim-dadbod'
  }
  use {
    'mfussenegger/nvim-dap',
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui'
  }

  -- ----------------------------
  -- ---        Utils         ---
  -- ----------------------------
  
  use {
    -- Colorscheme
    'Shatur/neovim-ayu',
    'catppuccin/nvim'
  }
  use {
    'fedepujol/move.nvim'
  }
  use {
    'kevinhwang91/nvim-hlslens'
  }
  use {
    'wfxr/minimap.vim'
  }
  use {
    'beauwilliams/focus.nvim'
  }
  use {
    'luukvbaal/stabilize.nvim'
  }
  use {
    'karb94/neoscroll.nvim'
  }
  use {
    -- Buffer
    'akinsho/bufferline.nvim',
    'noib3/nvim-cokeline'
  }
  use {
    -- Web icons
    'kyazdani42/nvim-web-devicons'
  }
  use {
    -- Dashboard
    'glepnir/dashboard-nvim'
  }
  use {
    -- Colors
    'norcalli/nvim-colorizer.lua'
  }
  use {
    -- Comments
    'numToStr/Comment.nvim'
  }
  use {
    -- Indent line
    'lukas-reineke/indent-blankline.nvim'
  }
  use {
    'nvim-lualine/lualine.nvim',
    'SmiteshP/nvim-navic',
    'SmiteshP/nvim-gps'
  }
  use {
    -- Tree
    'kyazdani42/nvim-tree.lua'
  }
  use {
    -- Telescope
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim'
    }
  use {
    -- Octo
    'pwntester/octo.nvim'
  }
  use {
    -- Which key
    'folke/which-key.nvim'
  }
  use {
    -- Lightspeed
    'ggandor/lightspeed.nvim'
  }
end)
