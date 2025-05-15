-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  desc = "Markdown file settings",
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.wrap = true
    vim.opt_local.colorcolumn = ""
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true

    vim.opt_local.textwidth = 80
    vim.opt_local.formatoptions = vim.o.formatoptions .. "t"
    vim.opt_local.linebreak = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  desc = "Json file settings",
  pattern = { "json" },
  callback = function()
    vim.opt_local.wrap = false
    vim.opt_local.spell = false
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
    vim.opt_local.conceallevel = 0
  end,
})
