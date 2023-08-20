local global = vim.g
local o = vim.o
local api = vim.api

-- Editor options
o.number = true -- Show line numbers
o.tabstop = 4 -- Number of spaces a <Tab> in the file counts for.
o.shiftwidth = 4 -- Number of spaces to use for each step of (auto) indent
o.cursorline = false -- Highlight the screen line of the cursor with cursor line
o.autoindent = true -- Copy indent from current line when starting a new line
o.syntax = "on"
o.relativenumber = true -- Show the line number relative to the line with the cursor
o.ruler = true -- Show the line and column number of the cursor position, separated by a comma
o.title = true -- When on, the title of the window will be set to the value of the title string
o.showmatch = true -- When a bracket is inserted, briefly jump to the maching bracketr
o.wrap = false

o.showmode = true
