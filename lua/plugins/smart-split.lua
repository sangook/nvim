return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd>SmartCursorMoveLeft<cr>", { mode = { "t", "n", "x" }, desc = "SmartCursorLeft" } },
    { "<C-j>", "<cmd>SmartCursorMoveDown<cr>", { mode = { "t", "n", "x" }, desc = "SmartCursorDown" } },
    { "<C-k>", "<cmd>SmartCursorMoveUp<cr>", { mode = { "t", "n", "x" }, desc = "SmartCursorUp" } },
    { "<C-l>", "<cmd>SmartCursorMoveRight<cr>", { mode = { "t", "n", "x" }, desc = "SmartCursorRight" } },
    { "<M-h>", "<cmd>SmartResizeLeft<cr>", { mode = { "t", "n", "x" }, desc = "SmartResizeLeft" } },
    { "<M-j>", "<cmd>SmartResizeDown<cr>", { mode = { "t", "n", "x" }, desc = "SmartResizeDown" } },
    { "<M-k>", "<cmd>SmartResizeUp<cr>", { mode = { "t", "n", "x" }, desc = "SmartResizeUp" } },
    { "<M-l>", "<cmd>SmartResizeRight<cr>", { mode = { "t", "n", "x" }, desc = "SmartResizeRight" } },
  },
}
