-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.opt.spelllang = { "en", "pl" }

vim.diagnostic.config({
  float = { border = "rounded" },
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#909090", bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { fg = "#909090", bg = "none" })
  end,
})

vim.g.OmniSharp_server_use_mono = 1
