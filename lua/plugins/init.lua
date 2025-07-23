return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.treesitter"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require "configs.mason-lspconfig"
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.lint"
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require "configs.mason-lint"
        end,
    },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require "configs.mason-conform"
        end,
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "mfussenegger/nvim-dap",
            "williamboman/mason.nvim",
        },
        lazy = true,
        keys = {
            {
                "<leader>db",
                function()
                    require("dap").toggle_breakpoint()
                end,
                desc = "Toggle Breakpoint",
            },

            {
                "<leader>dc",
                function()
                    require("dap").continue()
                end,
                desc = "Continue",
            },

            {
                "<leader>dC",
                function()
                    require("dap").run_to_cursor()
                end,
                desc = "Run to Cursor",
            },

            {
                "<leader>dT",
                function()
                    require("dap").terminate()
                end,
                desc = "Terminate",
            },
        },
        config = function()
            require "configs.nvim-dap"
        end,
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            require("dapui").setup()
        end,
    },

    {
        "saecki/crates.nvim",
        ft = { "toml" },
        config = function()
            require("crates").setup {
                completion = {
                    cmp = {
                        enabled = true,
                    },
                },
            }
            require("cmp").setup.buffer {
                sources = { { name = "crates" } },
            }
        end,
    },

    {
        "folke/which-key.nvim",
        lazy = false,
    },
    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },
}
