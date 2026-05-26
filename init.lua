require 'user.options'
require 'user.visual'
require 'user.mappings'
-- require 'user.lsp'

vim.g.command = {
	icon = require('user.icons').misc.term,
}

vim.pack.add( {
	'https://github.com/cultab/command.nvim', -- my plugin
})
