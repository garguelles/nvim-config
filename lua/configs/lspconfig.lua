-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local servers = {
  cssls = {},
  html = {
    filetypes = { "html", "tmpl" },
  },
  pyright = {},
  templ = {},
  ts_ls = {},
  htmx = {
    filetypes = { "html", "templ" },
  },
  tailwindcss = {
    filetypes = { "templ", "javascript", "typescript", "react" },
  },
  gopls = {
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        usePlaceholders = true,
        analyses = {
          unusedParams = true,
        },
      },
    },
  },
  solidity = {},
}

-- lsps with default config
for name, opts in pairs(servers) do
  opts.on_attach = on_attach
  opts.on_init = on_init
  opts.capabilities = capabilities

  lspconfig[name].setup(opts)
end
