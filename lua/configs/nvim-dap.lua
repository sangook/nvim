local dap = require "dap"
local dapui = require "dapui"

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

dap.adapters.codelldb = {
    type = "server",
    host = "127.0.0.1",
    port = "${port}",
    executable = {
        command = "codelldb", -- Replace with your codelldb path
        args = { "--port", "${port}" },
    },
}

dap.configurations.rust = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input(
                "Path to executable: ",
                vim.fn.getcwd() .. "/target/debug/",
                "file"
            )
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}

dap.configurations.cpp = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd(), "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}

dap.configurations.c = dap.configurations.cpp
