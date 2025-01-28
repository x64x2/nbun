local user = require("user")
user.setup({ parallel = true })
local use = user.use

-- cache lua code to make nvim fast af
use "lewis6991/impatient.nvim"

-- create missing directories on save
use "jghauser/mkdir.nvim"

-- user.nvim can manage itself!
use "faerryn/user.nvim"

-- comments: gcc for line comment and gbc for block comment
use "numToStr/Comment.nvim"

-- surround for () {} and XHTML
use "tpope/vim-surround"

-- which key
use "liuchengxu/vim-which-key"
use "AckslD/nvim-whichkey-setup.lua"

-- magic auto indent
use {
  "tpope/vim-sleuth",
  config = function() require('Comment').setup() end,
}

-- snippets and completion
use "rafamadriz/friendly-snippets"
use "L3MON4D3/LuaSnip"

-- guides for indentation
-- use {
--   "lukas-reineke/indent-blankline.nvim",
--   config = function() require("indent_blankline").setup{} end,
-- }

-- lualine: blazing fast status bar
use {

	"nvim-lualine/lualine.nvim",
	config = function()	require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'dracula',
    disabled_filetypes = {},
    section_separators = '', 
    component_separators = '',
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
} end,


} 
-- cursor highlight
-- use "yamatsum/nvim-cursorline"

-- since we are using parallel, we *must* call user.flush()
user.flush()
