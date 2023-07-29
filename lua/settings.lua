local global = vim.g
local o = vim.o

-- Editor options
o.number = true -- Show line numbers
o.tabstop = 2 -- Number of spaces a <Tab> in the file counts for.
o.shiftwidth = 2 -- Number of spaces to use for each step of (auto) indent
o.cursorline = true -- Highlight the screen line of the cursor with cursor line
o.autoindent = true -- Copy indent from current line when starting a new line
o.syntax = "on"
o.relativenumber = true -- Show the line number relative to the line with the cursor
