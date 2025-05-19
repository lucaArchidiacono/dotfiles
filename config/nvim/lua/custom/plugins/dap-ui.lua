return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    'mfussenegger/nvim-dap',
    'nvim-neotest/nvim-nio',
    'folke/lazydev.nvim',
  },
  config = function()
    require('lazydev').setup { library = { 'nvim-dap-ui' } }
  end,
}
