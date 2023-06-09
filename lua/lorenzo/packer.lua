-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'windwp/nvim-spectre'
  use 'tpope/vim-projectionist'
  use 'phoenixframework/tree-sitter-heex'
  use 'jreybert/vimagit'

  use {'ggandor/leap.nvim', config = function ()
    require('leap').add_default_mappings()
  end}

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  use 'voldikss/vim-floaterm'

  use {"EdenEast/nightfox.nvim", config = function() vim.cmd("colorscheme nightfox") end}

  use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
-- Or lazy load with `module` option. See further down for info on how to lazy load when using FocusSplit commands
-- Or lazy load this plugin by creating an arbitrary command using the cmd option in packer.nvim
-- use { 'beauwilliams/focus.nvim', cmd = { "FocusSplitNicely", "FocusSplitCycle" }, module = "focus",
--     config = function()
--         require("focus").setup({hybridnumber = true})
--     end
-- }

  -- To improve buffer deletion
  use {'ojroques/nvim-bufdel'}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
  -- To list all recently opened files
  use {"smartpde/telescope-recent-files"}

  use({
      "kelly-lin/telescope-ag",
      requires = { "nvim-telescope/telescope.nvim" },
  })

  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use({
    'morhetz/gruvbox',
    as = 'gruvbox',
  })
  use 'folke/tokyonight.nvim'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Bookmark
  use('MattesGroeger/vim-bookmarks')

  -- FZF
  use {
    'ibhagwan/fzf-lua', branch = 'main',
    requires= { {'nvim-tree/nvim-web-devicons'} }
  }

  -- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
  use('nvim-treesitter/nvim-treesitter-context')
  use('kyazdani42/nvim-web-devicons')
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

	use('mbbill/undotree')
	use('tpope/vim-fugitive')
  use('shumphrey/fugitive-gitlab.vim')
  use('tveskag/nvim-blame-line')
  use('Yggdroot/indentLine')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
      {'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

  use('preservim/nerdcommenter')
  use('mg979/vim-visual-multi')
  use('preservim/vimux')
  use('pgr0ss/vimux-ruby-test')
  use('christoomey/vim-tmux-navigator')
  use('vim-test/vim-test')
  use('thiagoramos23/jump-to-test-file')

  -- Airline
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')

  -- GitGutter
  --use('airblade/vim-gitgutter')
  --GitSigns
  use {
    'lewis6991/gitsigns.nvim'
  }

  -- GIT WORKTREE
  use { 'ThePrimeagen/git-worktree.nvim' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'nvim-lua/popup.nvim' }

  use('neoclide/coc.nvim', {branch =  'release', run = 'yarn install --frozen-lockfile'})

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
end)
