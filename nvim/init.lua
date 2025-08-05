vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.g.mapleader = " "
local keymap = vim.keymap.set

keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

keymap("n", "[b", ":bprevious<CR>", { desc = "Previous buffer" })
keymap("n", "]b", ":bnext<CR>", { desc = "Next buffer" })

keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })

keymap("n", "<leader>H", ":nohlsearch<CR>", { desc = "Clear search highlights" })

vim.cmd([[colorscheme slate]])
