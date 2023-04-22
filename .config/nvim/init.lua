


if vim.g.vscode then
    	-- VSCode extension
else
	-- ordinary Neovim
	require('mario.keymaps')
	require('mario.packer')
	require('mario.plugins_conf')
	require('mario.colors')
	require('mario.keymaps')
end

require('mario.vanilla_conf')

