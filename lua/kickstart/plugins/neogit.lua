return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  keys = {
    {
      '<leader>ng',
      mode = { 'n', 'v' },
      '<cmd>Neogit<cr>',
      desc = 'Open neogit',
    },
  },
}
