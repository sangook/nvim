return {
  "potamides/pantran.nvim",
  lazy = false,
  opts = {
    default_engine = "google",
    engines = {
      google = {
        default_source = "auto",
        default_target = "ko",
      },
    },
  },
  keys = {
    { "<leader>ti", ":Pantran mode=interactive target=ko<cr>", mode = { "n", "v" }, desc = "Translation interactive" },
    { "<leader>ty", ":Pantran mode=yank target=ko<cr>", mode = { "n", "v" }, desc = "Translation yank" },
    { "<leader>tr", ":Pantran mode=replace target=ko<cr>", mode = { "n", "v" }, desc = "Translation replace" },
    { "<leader>ta", ":Pantran mode=append target=ko<cr>", mode = { "n", "v" }, desc = "Translation append" },
    { "<leader>th", ":Pantran mode=hover target=ko<cr>", mode = { "n", "v" }, desc = "Translation hover" },
  },
}
