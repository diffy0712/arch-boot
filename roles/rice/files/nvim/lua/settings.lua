local g = vim.g
local o = vim.o

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '

-- https://neovim.io/doc/user/options.html#'termguicolors'
o.termguicolors = true

-- Do not save when switching buffers
-- o.hidden = true

-- https://neovim.io/doc/user/options.html#'timeoutlen'
-- Time in milliseconds to wait for a mapped sequence to complete.
o.timeoutlen = 500
-- https://neovim.io/doc/user/options.html#'updatetime'
-- If this many milliseconds nothing is typed the swap file will be written to disk
o.updatetime = 200

-- https://neovim.io/doc/user/options.html#'scrolloff'
-- Minimal number of screen lines to keep above and below the cursor.
-- This will make some context visible around where you are working.
o.scrolloff = 8

-- https://neovim.io/doc/user/options.html#'number'
-- Print the line number in front of each line.
o.number = true

-- https://neovim.io/doc/user/options.html#'numberwidth'
-- Minimal number of columns to use for the line number.
o.numberwidth = 5

-- https://neovim.io/doc/user/options.html#'relativenumber'
-- Show the line number relative to the line with the cursor in front of each line.
o.relativenumber = true

-- https://neovim.io/doc/user/options.html#'signcolumn'
-- When and how to draw the signcolumn.
o.signcolumn = 'yes:2'

-- https://neovim.io/doc/user/options.html#'cursorline'
-- Highlight the text line of the cursor with CursorLine
o.cursorline = true

-- -- o.smarttab = true
-- o.cindent = true
-- -- o.autoindent = true
-- o.wrap = true
-- o.textwidth = 300
-- o.tabstop = 4
-- o.shiftwidth = 0
-- o.softtabstop = -1 -- If negative, shiftwidth value is used
-- o.list = true
-- o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
-- -- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- -- o.formatoptions = 'qrn1'

-- https://neovim.io/doc/user/options.html#'clipboard'
-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- https://neovim.io/doc/user/options.html#'ignorecase'
-- Ignore case in search patterns.
-- Can be overruled by using "\c" or "\C" in the pattern,
o.ignorecase = true
-- https://neovim.io/doc/user/options.html#'smartcase'
o.smartcase = true

-- https://neovim.io/doc/user/options.html#'backup'
o.backup = false
-- https://neovim.io/doc/user/options.html#'writebackup'
o.writebackup = false
-- https://neovim.io/doc/user/options.html#'undofile'
o.undofile = true
-- https://neovim.io/doc/user/options.html#'swapfile'
o.swapfile = false

-- -- Remember 50 items in commandline history
-- https://neovim.io/doc/user/options.html#'history'
-- A history of ":" commands, and a history of previous search patterns 
-- is remembered.  This option decides how many entries may be stored in
-- each of these histories
o.history = 50

-- https://neovim.io/doc/user/options.html#'splitright'
-- When on, splitting a window will put the new window right of the current one.
o.splitright = true

-- https://neovim.io/doc/user/options.html#'splitbelow'
-- When on, splitting a window will put the new window below the current one.
o.splitbelow = true

-- -- Preserve view while jumping
-- https://neovim.io/doc/user/options.html#'jumpoptions'
-- o.jumpoptions = 'view'

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1