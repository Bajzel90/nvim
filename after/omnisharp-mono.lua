return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      omnisharp = {
        cmd = { "omnisharp-mono", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
      },
    },
    setup = {
      omnisharp = function(_, opts)
        require("lspconfig").omnisharp.setup(opts)
        return true -- prevents LazyVim from setting up the server again
      end,
    },
  },
}
