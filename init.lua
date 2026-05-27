require 'user.options'
require 'user.visual'
require 'user.mappings'
-- require 'user.lsp'

vim.g.command = {
	icon = require('user.icons').misc.term,
}

vim.pack.add {
	'https://github.com/cultab/command.nvim', -- my plugin
}

local capabilities = vim.lsp.protocol.make_client_capabilities()

if capabilities.workspace then

  capabilities.workspace.didChangeWatchedFiles = nil

end

vim.lsp.codelens.enable()
vim.lsp.inlay_hint.enable()
vim.lsp.config('*', {

  capabilities = capabilities,

})

vim.lsp.config['ruff'] = {
	cmd = { 'ruff', 'server' },
	filetypes = { 'python' },
	root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
	settings = {},
}

vim.lsp.config['jedi-language-server'] = {
	cmd = { 'jedi-language-server' },
	filetypes = { 'python' },
	root_markers = {
		'pyproject.toml',
		'setup.py',
		'setup.cfg',
		'requirements.txt',
		'Pipfile',
		'.git',
	},
}

vim.lsp.enable 'ruff'
vim.lsp.enable 'jedi-language-server'
