return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      cs = { "csharpier_adam" },
      xml = { "xmlformatter" },
      sql = { "sqlfmt" },
    },
    formatters = {
      csharpier_adam = {
        command = "csharpier",
        args = {
          "format",
          "--write-stdout",
        },
        to_stdin = true,
      },
    },
  },
}
