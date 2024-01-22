-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('airblade/vim-gitgutter')
    use('tpope/vim-fugitive')


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use { 'PedramNavid/dbtpal',
        config = function()
            local dbt = require('dbtpal')
            dbt.setup {
                -- Path to the dbt executable
                path_to_dbt = "dbt",

                -- Path to the dbt project, if blank, will auto-detect
                -- using currently open buffer for all sql,yml, and md files
                path_to_dbt_project = "",

                -- Path to dbt profiles directory
                path_to_dbt_profiles_dir = vim.fn.expand "~/.dbt",

                -- Search for ref/source files in macros and models folders
                extended_path_search = true,

                -- Prevent modifying sql files in target/(compiled|run) folders
                protect_compiled_files = true

            }

            -- Setup key mappings

            vim.keymap.set('n', '<leader>drf', dbt.run)
            vim.keymap.set('n', '<leader>drp', dbt.run_all)
            vim.keymap.set('n', '<leader>dtf', dbt.test)
            vim.keymap.set('n', '<leader>dm', require('dbtpal.telescope').dbt_picker)

            -- Enable Telescope Extension
            require 'telescope'.load_extension('dbtpal')
        end,
        requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope.nvim' } }
    }

    -- use('vimwiki/vimwiki')

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }

    use {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }

    use {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        config = function()
            require("fidget").setup {
                -- options
            }
        end,
    }
    -- use('nvim-tree/nvim-tree.lua')
    --


    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
end)
