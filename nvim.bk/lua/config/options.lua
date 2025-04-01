-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true

-- display
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.smoothscroll = true

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- turn off swapfile
vim.opt.swapfile = false
