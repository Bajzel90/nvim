return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.omnisharp.setup({
        cmd = {
          "mono",
          vim.fn.expand("~/.local/share/nvim/mason/packages/omnisharp-mono/omnisharp/OmniSharp.exe"),
          "--languageserver",
          "--hostPID",
          tostring(vim.fn.getpid()),
        },
        -- inne opcje
      })
    end,
  },
}
