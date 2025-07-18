require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Toggle transparency
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

-- NOTE: Terminal toggle horizontal
map({ "n", "t" }, "<A-f>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

-- resizing splits
map({ "n", "t" }, "<A-h>", require("smart-splits").resize_left)
map({ "n", "t" }, "<A-j>", require("smart-splits").resize_down)
map({ "n", "t" }, "<A-k>", require("smart-splits").resize_up)
map({ "n", "t" }, "<A-l>", require("smart-splits").resize_right)
-- moving between splits
map({ "n", "t" }, "<C-h>", require("smart-splits").move_cursor_left)
map({ "n", "t" }, "<C-j>", require("smart-splits").move_cursor_down)
map({ "n", "t" }, "<C-k>", require("smart-splits").move_cursor_up)
map({ "n", "t" }, "<C-l>", require("smart-splits").move_cursor_right)
map({ "n", "t" }, "<C-\\>", require("smart-splits").move_cursor_previous)
-- swapping buffers between windows
map({ "n", "t" }, "<leader><leader>h", require("smart-splits").swap_buf_left)
map({ "n", "t" }, "<leader><leader>j", require("smart-splits").swap_buf_down)
map({ "n", "t" }, "<leader><leader>k", require("smart-splits").swap_buf_up)
map({ "n", "t" }, "<leader><leader>l", require("smart-splits").swap_buf_right)

map("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
map("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
map("n", "]e", function()
  require("todo-comments").jump_next { keywords = { "ERROR", "WARNING" } }
end, { desc = "Next error/warning todo comment" })

-- TODO:
--
--
-- HACK:
-- WARN:
-- PERF:
-- NOTE:
-- TEST:
-- FIXME:
-- BUG:
-- FIXIT:
-- ISSUE:
