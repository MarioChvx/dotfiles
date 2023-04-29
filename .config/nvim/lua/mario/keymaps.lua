
-- Set map leader space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- New keymaps
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Tree

-- Change language spell check
-- lang = 0
-- function loop_lang()
    -- cmd = {
        -- 'setlocal spell spelllang=en_us',
        -- 'setlocal spell spelllang=es_mx',
        -- 'setlocal spell!'
        -- }
        -- Telescope

