return {
  {
    'stevearc/conform.nvim',
    lazy = false,
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
      formatters_by_ft = {
        css = { 'prettierd', 'prettier' },
        graphql = { 'prettierd', 'prettier' },
        html = { 'prettierd', 'prettier' },
        javascript = { 'prettierd', 'prettier' },
        javascriptreact = { 'prettierd', 'prettier' },
        json = { 'prettierd', 'prettier' },
        json5 = { 'prettierd', 'prettier' },
        lua = { 'stylua' },
        php = { 'php_cs_fixer', 'phpcbf' },
        python = { 'isort', 'black' },
        rust = { 'rustfmt' },
        twig = { 'djlint', 'twig-cs-fixer' },
        typescript = { 'prettierd', 'prettier' },
        typescriptreact = { 'prettierd', 'prettier' },
        yaml = { 'prettierd', 'prettier' },
        yml = { 'prettierd', 'prettier' },
      },
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
    },
  },
}
