return {
    -- Todo Comments
    { "folke/todo-comments.nvim", opts = {} },

    -- NvimTree
    { "nvim-tree/nvim-tree.lua", opts = {} },

    -- Which-Key
    {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	},
	keys = {
	    {
		"<leader>?",
		function()
		    require("which-key").show({ global = true })
		end,
		desc = "REMBER",
	    },
	},
    },

    -- Melange Colorscheme
    { "savq/melange-nvim" },

    {
	"lervag/vimtex",
	lazy = false,     -- we don't want to lazy load VimTeX

	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()

	-- VimTeX configuration goes here, e.g.
	vim.g.vimtex_view_method = "zathura"
	end
    },

    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
	'akinsho/toggleterm.nvim', 
	version = "*", 
	opts = { }
    },

    {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function () 
	  local configs = require("nvim-treesitter.configs")

	  configs.setup({
	      ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "cpp", "rust", "python" },
	      sync_install = false,
	      highlight = { enable = true },
	      indent = { enable = true },  
	    })
	end
    },

    {
	'MeanderingProgrammer/render-markdown.nvim',
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, 
	-- if you use the mini.nvim suite
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
	-- if you use standalone mini plugins
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, 
	-- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
    },

    {
	"tpope/vim-fugitive",
    }
}
