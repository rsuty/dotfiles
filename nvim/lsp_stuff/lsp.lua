local M = {}

M.setup_lsp = function(attach, capabilities)

    local lspconfig = require "lspconfig"

    local servers = { "clangd" }
    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
            flags = {
                debounce_text_changes = 150,
            },
        }
    end
    lspconfig.rust_analyzer.setup {
        
    }
end

return M
