return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local custom_moonfly = require'lualine.themes.moonfly'
        require('lualine').setup(
            { options = { theme = custom_moonfly },
        }
    )
end
}
