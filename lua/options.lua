require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.winborder = "rounded"

-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3
