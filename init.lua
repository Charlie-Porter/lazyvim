vim.opt.shell = "v"

require("config.lazy")

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.inlayHint = {
  dynamicRegistration = false,
}

-- Explicitly disable Inlay Hints support
capabilities.textDocument.inlayHint = nil

local rzls_path = "C:/repos/razor/artifacts/bin/rzls/Release/net8.0/win-x64/"
local rzls_executable = rzls_path .. "rzls.exe"
local document_store = require("rzls.documentstore")

require("rzls").setup({
  on_attach = function(client, bufnr)
    -- Create virtual buffers for the source buffer
    require("rzls.documentstore").create_vbufs(bufnr)

    -- Define key mappings and other LSP-related configurations here
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  end,
  capabilities = capabilities,
  path = rzls_path,
  settings = {
    razor = {
      trace = {
        level = "Verbose",
      },
      format = {
        enable = true,
      },
      inlayHints = {
        enable = false, -- Note: Use 'enable' instead of 'enabled'
      },
    },
  },
})

vim.lsp.set_log_level("debug")
