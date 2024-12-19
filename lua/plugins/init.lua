return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "vimdoc",
        "markdown",

        -- web dev
        "html",
        "templ",
        "css",
        "javascript",
        "typescript",
        "tsx",

        -- backend
        "go",
        "python",

        -- web3
        "solidity",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "templ",
        "gopls",
        "htmx-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
        "pyright",
        "solidity-ls",
        "biome",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
}
