return {
    "potamides/pantran.nvim",
    enabled = false,
    lazy = false,
    configs = function()
        require("pantran").setup {
            -- Default engine to use for translation. To list valid engine names run
            -- `:lua =vim.tbl_keys(require("pantran.engines"))`.
            default_engine = "google",
            -- Configuration for individual engines goes here.
            engines = {
                google = {
                    -- Default languages can be defined on a per engine basis. In this case
                    -- `:lua require("pantran.async").run(function()
                    -- vim.pretty_print(require("pantran.engines").yandex:languages()) end)`
                    -- can be used to list available language identifiers.
                    default_source = "auto",
                    default_target = "ko",
                },
            },
            controls = {
                mappings = {
                    edit = {
                        n = {
                            -- Use this table to add additional mappings for the normal mode in
                            -- the translation window. Either strings or function references are
                            -- supported.
                            ["j"] = "gj",
                            ["k"] = "gk",
                        },
                        i = {
                            -- Similar table but for insert mode. Using 'false' disables
                            -- existing keybindings.
                            ["<C-y>"] = false,
                            ["<C-a>"] = require("pantran.ui.actions").yank_close_translation,
                        },
                    },
                    -- Keybindings here are used in the selection window.
                    select = {
                        n = {
                            -- ...
                        },
                    },
                },
            },
        }
    end,
    --   controls = {
    --     mappings = {
    --       edit = {
    --         n = {
    --           -- Use this table to add additional mappings for the normal mode in
    --           -- the translation window. Either strings or function references are
    --           -- supported.
    --           ["j"] = "gj",
    --           ["k"] = "gk",
    --         },
    --         i = {
    --           -- Similar table but for insert mode. Using 'false' disables
    --           -- existing keybindings.
    --           ["<C-y>"] = false,
    --           ["<C-a>"] = require("pantran.ui.actions").yank_close_translation,
    --         },
    --       },
    --       -- Keybindings here are used in the selection window.
    --       -- select = {
    --       --   n = {
    --       --     -- ...
    --       --   },
    --       -- },
    --     },
    --   },
    -- },
    -- keys = {
    --   { "<leader>ti", ":Pantran mode=interactive target=ko<cr>", mode = { "n", "v" }, desc = "Translation interactive" },
    --   { "<leader>ty", ":Pantran mode=yank target=ko<cr>", mode = { "n", "v" }, desc = "Translation yank" },
    --   { "<leader>tr", ":Pantran mode=replace target=ko<cr>", mode = { "n", "v" }, desc = "Translation replace" },
    --   { "<leader>ta", ":Pantran mode=append target=ko<cr>", mode = { "n", "v" }, desc = "Translation append" },
    --   { "<leader>tb", ":Pantran mode=hover target=ko<cr>", mode = { "n", "v" }, desc = "Translation hover" },
}
