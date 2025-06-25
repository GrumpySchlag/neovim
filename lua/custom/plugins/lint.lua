return {
  { -- Linting
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        fish = { 'fish' },
        bash = { 'shellcheck' },
        go = { 'golangcilint' },
        markdown = { 'vale', 'markdownlint' },
        python = { 'ruff', 'mypy' }, -- flake8 a bit too strict
        rst = { 'rstcheck' },
        sh = { 'shellcheck' },
        -- tex = { "chktex" },
        zsh = { 'shellcheck' },
        -- brew install yamllint
        yaml = { 'yamllint' },
        -- npm install jsonlint -g
        json = { 'jsonlint' },
        php = { 'php', 'phpcs' },
        twig = { 'djlint', 'twig-cs-fixer' },
      }

      -- Create autocommand which carries out the actual linting
      -- on the specified events.
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          -- Only run the linter in buffers that you can modify in order to
          -- avoid superfluous noise, notably within the handy LSP pop-ups that
          -- describe the hovered symbol using Markdown.
          if vim.bo.modifiable then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
