vscode = require("vscode")

local system = require('command.utils').system
local notify = require('command.utils').notify

--- @type direction[]
local directions = {
	{
		name = 'vscode terminal',
		split = 'right',
	},
}

local function run(cmd)
    vscode.action("workbench.action.terminal.sendSequence", { args = { text = cmd .. "\n" } })
	if err ~= nil then
		notify(err, 'error')
	end
end

--- @type backend
local M = {
	run = run,
	directions = directions,
}

return M
