return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "float",
      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        python = "python3 -u",
        typescript = "deno run",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        c = function(...)
          c_base = {
            "cd $dir &&",
            "gcc $fileName -o",
            "/tmp/$fileNameWithoutExt",
          }
          local c_exec = {
            "&& /tmp/$fileNameWithoutExt &&",
            "rm /tmp/$fileNameWithoutExt",
          }
          vim.ui.input({ prompt = "Add more args:" }, function(input)
            c_base[4] = input
            vim.print(vim.tbl_extend("force", c_base, c_exec))
            require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
          end)
        end,
      },
    },
    keys = {
      { "<leader>z", group = "coderunner", desc = "code runner" },
      { "<leader>zc", "<cmd>RunClose<cr>", desc = "Close Runner" },
      { "<leader>zf", "<cmd>RunFile<cr>", desc = "Run File" },
      { "<leader>zg", group = "Filetypes and Projects", desc = "Filetypes and Projects" },
      { "<leader>zgf", "<cmd>CRFiletype<cr>", desc = "Filetype for Code Runner" },
      { "<leader>zgp", "<cmd>CRProjects<cr>", desc = "Projects for Code Runner" },
      { "<leader>zr", group = "Run", desc = "Run" },
      { "<leader>zrt", "<cmd>RunFile tab<cr>", desc = "Run File in Tab" },
      { "<leader>zrp", "<cmd>RunProject<cr>", desc = "Run Project" },
      { "<leader>zrc", "<cmd>RunCode<cr>", desc = "Run Code" },
    },
  },

  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.bottom = vim.list_extend(opts.bottom or {}, {
        { title = "CodeRunner", ft = "crunner", size = { height = 0.25 } },
      })
    end,
  },
}
