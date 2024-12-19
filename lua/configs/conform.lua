local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt", "golines", "goimports" },
    ts = { "biome-check" },
    javascript = { "biome", "prettier", stop_after_first = true },
    typescript = { "biome", "prettier", stop_after_first = true },
    typescriptreact = { "biome", "prettier", stop_after_first = true },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").formatters.golines = {
  prepend_args = { "-m", "128" },
}

return options
