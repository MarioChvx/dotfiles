


if vim.g.vscode then
    -- VSCode extension
    require('mario.vanilla_conf')
else
    require('mario.vanilla_conf')
    -- ordinary Neovim
    require('mario.keymaps')
    require('mario.packer')
    require('mario.plugins_conf')
    -- require('mario.colors')
    require('mario.keymaps')
end


