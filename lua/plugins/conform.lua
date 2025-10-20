return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      cs = { "csharpier" },
      xml = { "xmlformatter" },
      sql = { "sqlfmt" },
      -- ps1 = { "pwsh_formatter" },
      -- psm1 = { "pwsh_formatter" },
    },

    formatters = {
      pwsh_formatter = {
        command = "pwsh",
        args = {
          "-NoProfile",
          "-Command",
          [[
            $settings = @{
              IncludeRules = @(
                "PSUseConsistentIndentation",
                "PSPlaceOpenBrace",
                "PSAlignAssignmentStatement",
                "PSUseConsistentWhitespace"
              )
              Rules = @{
                PSUseConsistentIndentation = @{
                  Enable = $true
                  IndentationSize = 4
                }
                PSPlaceOpenBrace = @{
                  Enable = $true
                  OnSameLine = $true
                }
                PSAlignAssignmentStatement = @{
                  Enable = $true
                }
                PSUseConsistentWhitespace = @{
                  Enable = $true
                  MaxLineLength = 100
                }
              }
            }
    Invoke-Formatter -ScriptDefinition ([Console]::In.ReadToEnd()) -Settings $settings
  ]],
        },
        stdin = true,
      },
    },
  },
}
