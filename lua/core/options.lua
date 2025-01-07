vim.cmd("let g:netrw_liststyle = 3")

-- Line Numbers
vim.wo.number = true
vim.wo.relativenumber = true

local opt = vim.opt

-- Mouse
opt.mouse = "a"
opt.mousefocus = true

opt.cursorline = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Indent Settings
opt.softtabstop = 2
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

--- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

--  Others
opt.scrolloff = 8
opt.wrap = false
opt.termguicolors = true

-- Fillchars
opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸"
}
