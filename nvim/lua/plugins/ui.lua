return {
    {"MunifTanjim/nui.nvim"},
    {"rcarriga/nvim-notify"},
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function ()
           vim.keymap.set('n', '<C-e>', '<Cmd>Neotree<CR>', {})
        end
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    { "folke/which-key.nvim", lazy = false, config = function () require("which-key").setup{} end},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = "horizon",
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    always_show_tabline = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 100,
                        tabline = 100,
                        winbar = 100,
                    }
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {'filename'},
                    lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            }
        end,
    },
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() require('barbar').setup() end,
        opts = {
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
        config = function ()
            -- Move to previous/next buffer
            vim.keymap.set('n', '<A-left>', '<Cmd>BufferPrevious<CR>', { silent = true })
            vim.keymap.set('n', '<A-right>', '<Cmd>BufferNext<CR>', { silent = true })

            -- Re-order to previous/next buffer
            vim.keymap.set('n', '<A-,>', '<Cmd>BufferMovePrevious<CR>', { silent = true })
            vim.keymap.set('n', '<A-.>', '<Cmd>BufferMoveNext<CR>', { silent = true })

            -- Goto buffer in position
            vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { silent = true })
            vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { silent = true })
            vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { silent = true })
            vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', { silent = true })
            vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', { silent = true })
            vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', { silent = true })
            vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', { silent = true })
            vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', { silent = true })
            vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', { silent = true })
            vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', { silent = true })

            -- Pin/unpin buffer
            vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', { silent = true })

            -- Close buffer
            vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', { silent = true })

            -- Restore buffer
            vim.keymap.set('n', '<A-s-c>', '<Cmd>BufferRestore<CR>', { silent = true })

            -- Magic buffer-picking mode
            vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', { silent = true })
            vim.keymap.set('n', '<C-p>', '<Cmd>BufferPickDelete<CR>', { silent = true })

            -- Sort buffers automatically by...
            vim.keymap.set('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', { silent = true })
            vim.keymap.set('n', '<leader>bn', '<Cmd>BufferOrderByName<CR>', { silent = true })
            vim.keymap.set('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', { silent = true })
            vim.keymap.set('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', { silent = true })
            vim.keymap.set('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', { silent = true })
        end
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function ()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end
    }
}
