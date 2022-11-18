vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

return require'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'nanozuki/tabby.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
--        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use { 'feline-nvim/feline.nvim', requires = {
        'nvim-tree/nvim-web-devicons',
        { 'lewis6991/gitsigns.nvim', tag = 'release' }
    }}
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use { 'williamboman/mason-lspconfig.nvim', requires = { 'neovim/nvim-lspconfig' } }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'j-hui/fidget.nvim'}, -- lsp progress info

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    }
}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    }
end)

