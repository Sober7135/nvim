if vim.g.vscode then
	-- require('core.options')
else
	require('core')
	require('keymap')
	require('plugin').init()
end

