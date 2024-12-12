-- Set leader key
vim.g.mapleader = " "

-- Line numbers
vim.opt.number = true       -- Enable line numbers
vim.opt.relativenumber = true  -- Enable relative line numbers

-- Indentation
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 4         -- Number of spaces that a <Tab> in the file counts for
vim.opt.smartindent = true  -- Smart indentation

-- Search
vim.opt.ignorecase = true   -- Ignore case when searching
vim.opt.smartcase = true    -- Case-sensitive search when uppercase letters are used
vim.opt.hlsearch = true     -- Highlight search results
vim.opt.incsearch = true    -- Show search matches as you type

-- Appearance
vim.opt.termguicolors = true  -- Enable true color support
vim.opt.cursorline = true     -- Highlight the current line

-- Undo and backup
vim.opt.undofile = true     -- Save undo history to a file
vim.opt.backup = false      -- Don't create backup files
vim.opt.swapfile = false    -- Don't create swap files

-- Wrapping
vim.opt.wrap = false        -- Don't wrap lines by default

-- Split windows
vim.opt.splitright = true   -- Vertical splits open to the right
vim.opt.splitbelow = true   -- Horizontal splits open below

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Scrolling
vim.opt.scrolloff = 8       -- Minimum lines to keep above and below the cursor
vim.opt.sidescrolloff = 8   -- Minimum columns to keep to the left and right of the cursor

-- Performance
vim.opt.lazyredraw = false   -- Redraw only when necessary
vim.opt.updatetime = 900    -- Faster completion (default is 4000ms)

-- Mouse
vim.opt.mouse = "a"         -- Enable mouse support

-- Disable error bells
vim.opt.errorbells = false
vim.opt.visualbell = false

-- Timeout for key mappings
vim.opt.timeoutlen = 500    -- Time in milliseconds to wait for a mapped sequence to complete

-- Folding
vim.opt.foldmethod = "manual" -- Set folding method; "manual" means no auto folds
vim.opt.foldenable = false    -- Disable folding by default
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.markdown_fenced_languages = {
    "ts=typescript"
}

