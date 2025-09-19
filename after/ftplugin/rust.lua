local map = vim.keymap.set
local bufnr = vim.api.nvim_get_current_buf()
-- map("n", "gra", function()
--     vim.cmd.RustLsp "codeAction" -- supports rust-analyzer's grouping
--     -- or vim.lsp.buf.codeAction() if you don't want grouping.
-- end, { silent = true, buffer = bufnr })

-- ruataceanvim mapping
local keys = require("lazyvim.plugins.lsp.keymaps").get() -- Get the default LSP keymaps
keys[#keys + 1] = { "K", false } -- Set the "K" keymap to false to disable it

map("n", "K", ":RustLsp hover actions<cr>", { silent = true, buffer = bufnr })
map("n", "<leader>rr", ":Cargo run<cr>a", { desc = "Cargo run", silent = true, buffer = bufnr })
map("n", "<leader>rt", ":Cargo test<cr>a", { desc = "Cargo test", silent = true, buffer = bufnr })
map("n", "<A-K>", ":RustLsp moveItem up<cr>", { silent = true, buffer = bufnr })
map("n", "<A-J>", ":RustLsp moveItem down<cr>", { silent = true, buffer = bufnr })

vim.o.winborder = "rounded"
