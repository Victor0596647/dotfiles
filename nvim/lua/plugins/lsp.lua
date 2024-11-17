local servers = { 'lua_ls', 'clangd', 'denols', 'ruff', 'bashls', 'jsonls', 'markdown_oxide', 'html', 'cssls', 'svelte' }
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = servers,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup {
                    -- on_attach = my_custom_on_attach,
                    capabilities = capabilities,
                }
            end
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' },  -- Recognize `vim` as a global variable
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),  -- Make Neovim runtime files available to the server
                            checkThirdParty = false,  -- Disable third-party checking to avoid prompts
                        },
                        telemetry = { enable = false },
                    },
                },
            })
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        end
    }
}
