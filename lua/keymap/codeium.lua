local bind = require("keymap.bind")

local keymap = vim.keymap.set

local plug_map = {
	keymap('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true }),
	keymap('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true }),
	keymap('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true }),
	keymap('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
}

bind.nvim_load_mapping(plug_map)
