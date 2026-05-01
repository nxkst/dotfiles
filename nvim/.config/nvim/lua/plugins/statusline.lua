return {
    'nvim-mini/mini.statusline',
    dependencies = {
        "nvim-tree/nvim-web-devicons", opts = {},
        "lewis6991/gitsigns.nvim"
    },
    version = false,
    config = function()
        local statusline = require 'mini.statusline'
        statusline.setup({
            use_icons = true
        })
        statusline.section_location = function() return '%2l:%-2v' end
    end
}
