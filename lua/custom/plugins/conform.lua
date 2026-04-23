return {
  {
    'stevearc/conform.nvim',
    lazy = false,
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    config = function()
      require('conform').setup {
        formatters = {
          phpcbf = {
            cwd = require('conform.util').root_file { '.phpcs.xml', 'phpcs.xml', '.phpcs.xml.dist', 'phpcs.xml.dist' },
            require_cwd = true,
          },
          php_cs_fixer = {
            cwd = require('conform.util').root_file { '.php-cs-fixer.dist.php', '.php-cs-fixer.php' },
            require_cwd = true,
          },
        },
        formatters_by_ft = {
          css = { 'prettierd', 'prettier' },
          graphql = { 'prettierd', 'prettier' },
          html = { 'prettierd', 'prettier' },
          javascript = { 'prettierd', 'prettier' },
          javascriptreact = { 'prettierd', 'prettier' },
          json = { 'prettierd', 'prettier' },
          json5 = { 'prettierd', 'prettier' },
          lua = { 'stylua' },
          php = { 'phpcbf', 'php_cs_fixer', stop_after_first = true },
          python = { 'isort', 'black' },
          rust = { 'rustfmt' },
          twig = { 'djlint', 'twig-cs-fixer' },
          typescript = { 'prettierd', 'prettier' },
          typescriptreact = { 'prettierd', 'prettier' },
          yaml = { 'yamlfix', 'prettierd', 'prettier', stop_after_first = true },
          yml = { 'prettierd', 'prettier' },
          xml = { 'xmlformatter' },
        },
        format_on_save = { timeout_ms = 500, lsp_fallback = true },
      }
    end,
  },
}
