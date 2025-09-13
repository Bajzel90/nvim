return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      cs = { "csharpier" },
      xml = { "xmlformatter" },
      sql = { "sqlfmt" },
    },

    default_format_opts = {
      timeout_ms = 60000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_format = "fallback", -- not recommended to change
    },
  },
}
