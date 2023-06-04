vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    use {'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'}

    use {'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons',
    opt = true }}

    use {'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
    require'alpha'.setup(require'alpha.themes.startify'.config)
    end}

    use {'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }}

    use { 'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
    require("nvim-tree").setup {}
    end}

    use ('marko-cerovac/material.nvim')

    use { "williamboman/mason.nvim"}

    use { "ms-jpq/coq_nvim",
    branch = "coq",
    event = "InsertEnter",
    opt = true,
    run = ":COQdeps",
    config = function()
    require("coq_config.coq").setup()
    end,
    requires = { { "ms-jpq/coq.artifacts", branch = "artifacts" },
    { "ms-jpq/coq.thirdparty", branch = "3p", module = "coq_3p" }, },
    disable = false}
end)
