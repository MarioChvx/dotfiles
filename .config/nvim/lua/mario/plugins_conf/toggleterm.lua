require("toggleterm").setup{
    direction = 'float'
}

-- KEYMAPS
vim.keymap.set("n", "<C-t>", vim.cmd.ToggleTerm)

-- TERM MODE
function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<C-t>', vim.cmd.ToggleTerm, opts)
end

vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')

