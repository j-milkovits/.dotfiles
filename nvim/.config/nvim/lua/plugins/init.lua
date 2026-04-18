return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
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
        "rust-analyzer",
        "jdtls",

        -- formatter
        "stylua",
        "prettier",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 50,
        side = "right",
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

        -- others
        "python",
        "java",

        -- storage stuff
        "json",
        "yaml",
        "toml",
        "markdown",
      },
    },
  },
}
