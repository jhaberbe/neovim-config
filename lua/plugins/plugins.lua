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
	"nvim-neorg/neorg",
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	config = true,
    },

    {
      "NeogitOrg/neogit",
      dependencies = {
	"nvim-lua/plenary.nvim",         -- required
	"sindrets/diffview.nvim",        -- optional - Diff integration

	-- Only one of these is needed.
	"nvim-telescope/telescope.nvim", -- optional
	"ibhagwan/fzf-lua",              -- optional
	"echasnovski/mini.pick",         -- optional
      },
    },
    
    {
	'dccsillag/magma-nvim', 
    }
}
