local api = vim.api
local g = vim.g
local opt = vim.opt
local fn = vim.fn
local bo = vim.bo

-- Remap leader and local leader to space
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = "\\"
g.maplocalleader = "\\"

-- General options for display
opt.termguicolors = true
opt.background = 'dark'
opt.syntax = 'on'
opt.errorbells = false
opt.showmode = false
opt.swapfile = false
opt.backup = false
opt.undodir = fn.stdpath'cache' .. '/undodir'
opt.undofile = true
opt.hidden = true

opt.incsearch = true
opt.hlsearch = true

opt.number = true
opt.mouse = "a"
opt.breakindent = true
opt.ignorecase = true

opt.smartcase = true
opt.updatetime = 250
opt.signcolumn = "yes"
opt.clipboard = "unnamedplus"
opt.timeoutlen = 300

vim.cmd [[
	augroup YankHighlight
		autocmd!
		autocmd TextYankPost * silent! lua vim.highlight.on_yank()
	augroup end
]]

opt.path:remove "/usr/include"
opt.path:append "**"
opt.wildignorecase = true
opt.wildignore:append "**/.git/*"
opt.wildignore:append "**/build/*"
opt.wildignore:append "**/node_modules/*"

-- File defaults
bo.autoindent = true
bo.smartindent = true
bo.textwidth = 120
opt.expandtab = true

