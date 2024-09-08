-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use ({
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	})

	-- Treesitter
	use ({
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	})
	-- Treesitter Playground
	use ({
		'nvim-treesitter/playground'
	})

	-- Undo Tree
	use ({
		'mbbill/undotree'
	})

	-- Vim-Fugitive
	use ('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

	-- Platform.io for working with MCU dev boards
	use ('normen/vim-pio');

	-- Neotree for explorer/file view
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	}

	-- Terminal setup
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup();
	end}

	-- Guide for leader keybindings
	use { 'spinks/vim-leader-guide' };


	-- use {'neoclide/coc.nvim', branch = 'release'};
	


	-- Landing page
	use {
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'hyper',
				-- config = {
				-- 	header = {}, --your header
				-- 	center = {
				-- 		{
				-- 			icon = ' ',
				-- 			icon_hl = 'Title',
				-- 			desc = 'Find File           ',
				-- 			desc_hl = 'String',
				-- 			key = 'b',
				-- 			keymap = 'SPC f f',
				-- 			key_hl = 'Number',
				-- 			key_format = ' %s', -- remove default surrounding `[]`
				-- 			action = 'lua print(2)'
				-- 		},
				-- 		{
				-- 			icon = ' ',
				-- 			desc = 'Find Dotfiles',
				-- 			key = 'f',
				-- 			keymap = 'SPC f d',
				-- 			key_format = ' %s', -- remove default surrounding `[]`
				-- 			action = 'lua print(3)'
				-- 		},
				-- 	},
				-- 	footer = {}  --your footer
				-- }

			}
		end,
		requires = {'nvim-tree/nvim-web-devicons'}
	}

end)
