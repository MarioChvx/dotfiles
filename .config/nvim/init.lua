
require('mario.keymaps')
require('mario.vanilla_conf')

if vim.g.vscode then
    	-- VSCode extension
else
    	-- ordinary Neovim
	require('mario.packer')
	require('mario.plugins_conf')
end

