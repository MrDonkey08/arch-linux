-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Indentation
vim.o.autoindent = true -- Start new lines correctly indented
vim.o.breakindent = true -- Indent wrapped lines' continuations
vim.o.cindent = true -- Indent according to the C indenting rules
vim.o.expandtab = false -- Expand tabs to spaces (see softtabstop)
vim.o.showtabline = 4 -- Show the tabline even when just one tab is open
vim.o.smartindent = true -- Indent new lines in a smart way (see autoindent)
vim.o.smarttab = true -- Treat spaces as tabs in increments of shiftwidth
vim.o.shiftwidth = 4 -- Force indent spaces to equal to tabstop (see tabstop)
vim.o.softtabstop = 0 -- Do not insert spaces when pressing tab (see shiftwidth)
vim.o.tabstop = 4 -- Number of columns to move when pressing <TAB> (see expandtab)

-- Wrapping
vim.o.linebreak = true -- Respect WORDS when wrap-breaking lines (see wrap)
vim.o.wrap = true -- Wrap text that reaches the window's width

-- Enumeration
vim.o.number = true -- Number column to the left (used with relativenumber)
vim.o.relativenumber = true -- Show numbers relative to cursor position (see number)

-- Highlight
vim.o.colorcolumn = "81" -- Draw column at line character limit
vim.o.cursorline = true -- Highlight the line where the cursor is (see cursorlineopt)
vim.o.cursorlineopt = "both" -- Highlight the cursor line number (see cursorline)
vim.o.hlsearch = true -- Highlight all search matches
vim.o.incsearch = true -- Highlight search matches while writing (with hlsearch)

-- Styling
vim.o.showcmd = true -- Show the keys pressed in normal mode until action is run

-- Functionality
vim.o.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.o.fixeol = true -- Restore EOL at EOF if missing when writing
vim.o.foldmethod = "marker" -- Only allow foldings with triple brackets
vim.o.foldtext = "v:lua.fold_string()" -- Custom folding string
vim.o.hidden = true -- Hide inactive buffers instead of deleting them
vim.o.list = true -- Replace special characters (see listchars)
vim.o.mouse = "nvi" -- Allow mouse everywhere except in command line mode
vim.o.nrformats = "unsigned" -- Treat all numbers as unsigned with <C-A> and <C-X>
