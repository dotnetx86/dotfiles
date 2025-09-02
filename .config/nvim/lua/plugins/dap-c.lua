return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.adapters.cpp = {
        type = "executable",
        command = "gdb", -- или "gdb" с gdb-mi, см. ниже
        name = "gdb"
      }

      dap.configurations.c = {
        {
          name = "Запуск файла",
          type = "cpp",
          request = "launch",
          program = function()
            return vim.fn.input('Путь до исполняемого файла: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = true,
          args = {},
        },
      }

      dap.configurations.cpp = dap.configurations.c
    end,
  },
}

