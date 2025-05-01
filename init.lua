-- Keymaps Config (FIRST)
require("config.keymaps")

-- Lazy Nvim Setup
require("config.lazy")
require("lazy").setup("plugins")

-- Configuration for each plugin
require("config.nvim_tree")
require("config.melange")
require("config.lualine")
require("config.magma")
