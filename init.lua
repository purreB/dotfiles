require("settings")
require("plugins")
require("bufferline").setup{}
require('lualine').setup{options = { theme = 'codedark'}}
require("nvim-tree").setup()
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
