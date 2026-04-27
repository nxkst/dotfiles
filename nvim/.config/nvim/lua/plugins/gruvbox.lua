--[[return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        vim.o.background = "dark"

        require("gruvbox").setup({
            contrast = "hard",
            transparent_mode = true,
        })
        vim.cmd("colorscheme gruvbox")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
} ]]--

--[[ return {
    "sainnhe/gruvbox-material",
    config = function()
        vim.cmd("colorscheme gruvbox-material")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
} ]]

return {
    "luisiacc/gruvbox-baby",
    config = function()
        vim.g.gruvbox_baby_transparent_mode = false
        vim.g.gruvbox_baby_use_original_palette = true

        vim.cmd("colorscheme gruvbox-baby")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}
