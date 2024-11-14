return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lsp
        "lua-language-server",
        "html-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "pyright",

        -- formatter
        "stylua",
        "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "vimdoc",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        -- data science
        "python",
      },
    },
  },

  {
    "kiyoon/jupynium.nvim",
    build = "pip install .",
    opts = {
      default_notebook_URL = "localhost:8888",
      use_default_keybindings = false,
    },
  },

  {
    "github/copilot.vim",
  },
}
