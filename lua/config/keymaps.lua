-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set
map("i", "jj", "<esc>")
map("i", "jk", "<esc>")

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- move items
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "j", "gj")
map("n", "k", "gk")
