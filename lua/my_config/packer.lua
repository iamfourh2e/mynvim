vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use({
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" },    -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
        },
    })
    use {
        "rachartier/tiny-inline-diagnostic.nvim",

    }
    use {
        "rachartier/tiny-inline-diagnostic.nvim",
    }
    use 'wbthomason/packer.nvim'
    use { 'sago35/tinygo.vim' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-ui-select.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
        },
        config = function()
            require('telescope').setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<C-j>"] = require('telescope.actions').move_selection_next,
                            ["<C-k>"] = require('telescope.actions').move_selection_previous,
                        },
                    },
                    layout_config = {
                        vertical = { width = 0.8 }
                        -- other layout configuration here
                    },
                },
                extensions = {
                    fzf = {
                        override_generic_sorter = false, -- override the generic sorter
                        override_file_sorter = true,     -- override the file sorter
                    },
                    flutter = {
                        use_test = true,
                    },
                },
            }
        end,
    }

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x', requires = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {                            -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
    }
    }
    use { "ellisonleao/gruvbox.nvim" }
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
    }
    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    --use("github/copilot.vim")
    use {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
    }
    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    }
    use({ 'projekt0n/github-nvim-theme' })
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {
                disable_filetype = { "TelescopePrompt", "vim" },
            }
        end
    }
    use("folke/zen-mode.nvim")
    use { "lukas-reineke/indent-blankline.nvim",


    }
    use { 'echasnovski/mini.nvim', branch = 'stable' }
    use
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        {
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            --"rcarriga/nvim-notify",
        }
    }
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'hyper' --  theme is doom and hyper default is doom

            }
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use {
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    }
    use {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    }
    use {
        "CopilotC-Nvim/CopilotChat.nvim",
        requires = {
            { "github/copilot.vim" },    -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
        },
        config = function()
            require("CopilotChat").setup {
                show_help = "yes",         -- Show help text for CopilotChatInPlace, default: yes
                debug = false,             -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
                disable_extra_info = 'no', -- Disable extra information (e.g: system prompt) in the response.
                language = "English"       -- Copilot answer language settings when using default prompts. Default language is English.
                -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
                -- temperature = 0.1,
            }
        end,
    }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    end
    }
end)
