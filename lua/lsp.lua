local lspconfig = require'lspconfig';

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = { globals = { 'vim' }, },
            telemetry = { enable = false },
        },
    },
    capabilitie = capabilities
}

lspconfig.clangd.setup { capabilities = capabilities }

--lspconfig.rust_analyzer.setup { capabilities = capabilities }
local rust_tools = require'rust-tools';
rust_tools.setup({})

