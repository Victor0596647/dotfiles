-- Clear search highlights by pressing <Esc> twice
vim.keymap.set('n', '<Esc><Esc>', '<Cmd>nohlsearch<CR>', { silent = true })
-- Sync Lazy Plugins
vim.keymap.set('n', '<C-s>', '<Cmd>Lazy sync<CR>', {})
