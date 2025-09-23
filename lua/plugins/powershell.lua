return {
  "TheLeoP/powershell.nvim",
  opts = {
    bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
    shell = "pwsh",
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    init_options = vim.empty_dict(),
    settings = vim.empty_dict(),
    shell = "pwsh",
    handlers = base_handlers,
  },
}
