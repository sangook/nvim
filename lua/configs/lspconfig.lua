require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust_analyzer", }
vim.lsp.enable(servers)

local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  host = '127.0.0.1',
  port = '${port}',
  executable = {
    command = 'codelldb', -- Replace with your codelldb path
    args = { '--port', '${port}' },
  },
}

dap.configurations.rust = {
  {
    name = 'Launch',
    type = 'codelldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}


-- read :h vim.lsp.config for changing options of lsp servers 
