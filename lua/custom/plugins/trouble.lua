return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    use_diagnostic_signs = true, -- enabling this will use the signs defined in your lsp client
  },
  config = function()
    -- Lua
    vim.keymap.set('n', '<leader>q', function()
      require('trouble').toggle 'workspace_diagnostics'
    end)
    -- vim.keymap.set('n', '<leader>xw', function()
    --   require('trouble').toggle 'workspace_diagnostics'
    -- end)
    -- vim.keymap.set('n', '<leader>xd', function()
    --   require('trouble').toggle 'document_diagnostics'
    -- end)
    -- vim.keymap.set('n', '<leader>xq', function()
    --   require('trouble').toggle 'quickfix'
    -- end)
    -- vim.keymap.set('n', '<leader>xl', function()
    --   require('trouble').toggle 'loclist'
    -- end)
    -- vim.keymap.set('n', 'gR', function()
    --   require('trouble').toggle 'lsp_references'
    -- end)
  end,
}
