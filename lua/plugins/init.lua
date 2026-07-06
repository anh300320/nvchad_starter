return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    import = "nvchad.blink.lazyspec",
  },

  {
    "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
      local dap = require("dap")

      vim.api.nvim_set_hl(0, "DapBreakpointLine", {
        bg = "#3b1f1f",
      })

      vim.fn.sign_define("DapBreakpoint", {
        text = "●",
        texthl = "DapBreakpoint",
        linehl = "DapBreakpointLine",
      })

      vim.api.nvim_set_hl(0, "DapStoppedLine", {
        bg = "#2d3f5f",
      })

      vim.fn.sign_define("DapStopped", {
        text = "▶",
        texthl = "DapStopped",
        linehl = "DapStoppedLine",
      })
    end,
  },

  {
    "leoluz/nvim-dap-go",
    ft = "go",
    lazy = false,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("dap-go").setup()
    end,
  },
  {
    "igorlfs/nvim-dap-view",
    lazy = false,
    dependencies = { "mfussenegger/nvim-dap" },
    opts = {},
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",

        ["<Tab>"] = {
          "select_and_accept",
          "fallback",
        },

        ["<S-Tab>"] = {
          "select_prev",
          "fallback",
        },

        ["<CR>"] = {
          "accept",
          "fallback",
        },
      },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("toggleterm").setup({
        direction = "horizontal",
        size = 15,
        open_mapping = [[<D-j>]],
      })
    end,
  },
  {
    "lewis6991/satellite.nvim",
    lazy = false,
    opts = {
      current_only = false,
      winblend = 50,
      handlers = {
        cursor = {
          enable = true,
        },
        search = {
          enable = true,
        },
        diagnostic = {
          enable = true,
        },
        gitsigns = {
          enable = true,
        },
        marks = {
          enable = true,
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    lazy = false,
    event = "VeryLazy",
    opts = {},
  },
  {
    "stevearc/aerial.nvim",
    lazy = false,
    ft = { "go" },

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons", -- optional, for icons
    },
    opts = {
      layout = {
        default_direction = "right",
        min_width = 30,
      },
      attach_mode = "global",
      backends = { "lsp", "treesitter", "markdown" },
      show_guides = true,
      open_automatic = true,
    },
    keys = {
      {
        "<leader>a",
        "<cmd>AerialToggle!<CR>",
        desc = "Toggle Aerial",
      },
    },
  },
  {
    "stevearc/overseer.nvim",
    opts = {},
    lazy = false,
    cmd = { "OverseerOpen", "OverseerRun" },
  },
}
