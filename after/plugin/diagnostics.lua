-- Next/prev diagnostic: Errors only
vim.keymap.set('n', ']E', function()
  vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR }
end, { desc = 'Next diagnostic (Error)' })

vim.keymap.set('n', '[E', function()
  vim.diagnostic.goto_prev { severity = vim.diagnostic.severity.ERROR }
end, { desc = 'Prev diagnostic (Error)' })

-- (Optionnel) Warnings only
vim.keymap.set('n', ']W', function()
  vim.diagnostic.goto_next { severity = vim.diagnostic.severity.WARN }
end, { desc = 'Next diagnostic (Warn)' })

vim.keymap.set('n', '[W', function()
  vim.diagnostic.goto_prev { severity = vim.diagnostic.severity.WARN }
end, { desc = 'Prev diagnostic (Warn)' })
