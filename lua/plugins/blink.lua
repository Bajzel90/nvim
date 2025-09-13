return {
  "saghen/blink.cmp",
  event = "InsertEnter",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    completion = {
      list = { selection = { preselect = false, auto_insert = true } },
      accept = {
        -- experimental auto-brackets support
        auto_brackets = {
          enabled = true,
        },
      },

      documentation = {
        auto_show = false,
      },
    },

    sources = {
      -- adding any nvim-cmp sources here will enable them
      -- with blink.compat
      compat = {},
      default = { "lsp", "path", "snippets", "buffer" },
    },

    cmdline = {
      enabled = false,
    },
    keymap = {
      preset = "default",
    },
  },
}
