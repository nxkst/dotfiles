return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.diagnostic.config({
            virtual_text = {
                prefix = "●",
                spacing = 2,
            },
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })

        vim.lsp.enable("lua_ls")

        vim.lsp.enable("ts_ls")

        vim.lsp.enable("pyright")
    end
}
