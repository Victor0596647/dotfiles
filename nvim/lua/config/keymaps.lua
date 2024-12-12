-- Clear search highlights by pressing <Esc> twice
vim.keymap.set('n', '<Esc><Esc>', '<Cmd>nohlsearch<CR>', { silent = true })
-- Sync Lazy Plugins
vim.keymap.set('n', '<C-s>', '<Cmd>Lazy sync<CR>', {})

vim.keymap.set('n', '<leader>uh', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, { desc = 'Toggle Inlay Hints' })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show variable properties" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

-- Open compiler
vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true })

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
