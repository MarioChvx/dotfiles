
--[[
             (_)              | |              
 _ __ __   __ _  _ __ ___     | | _   _   __ _ 
| '_ \\ \ / /| || '_ ` _ \    | || | | | / _` |
| | | |\ V / | || | | | | | _ | || |_| || (_| |
|_| |_| \_/  |_||_| |_| |_|(_)|_| \__,_| \__,_|
--]]

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

