-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  -- theme = "one_light", -- NOTE: Default Value
  theme = "vscode_dark",
  theme_toggle = { "vscode_dark", "vscode_light" },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
  tabufline = {
    lazyload = false,
  },
  statusline = {
    separator_style = "arrow",
    -- theme = "vscode_colored",
  },
}

M.lsp = { signature = false }

return M
