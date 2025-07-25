return {
    "uga-rosa/translate.nvim",
    lazy = true,
    keys = {
        {
            "<A-t>",
            "<cmd>Translate ko<cr>",
            mode = { "n", "v", "x" },
            desc = "Translate",
        },
    },
}
