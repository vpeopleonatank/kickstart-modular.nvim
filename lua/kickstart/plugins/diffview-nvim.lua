return {
  'sindrets/diffview.nvim',
  lazy = false,
  keys = {
    {
      '<leader>dv',
      '<cmd>DiffviewOpen<cr>',
      desc = '[D]iff[v]iew open',
    },
    {
      '<leader>dc',
      '<cmd>DiffviewClose<cr>',
      desc = '[D]iff[c]lose',
    },
    {
      '<leader>df',
      '<cmd>DiffviewFileHistory<cr>',
      desc = '[D]iff [f]ile history',
    },
    {
      '<leader>dr',
      '<cmd>DiffviewRefresh<cr>',
      desc = '[D]iff [r]efresh',
    },
    {
      '<leader>do',
      '<cmd>DiffviewFileHistory %<cr>',
      desc = '[D]iff [o]pen current file',
    },
    {
      '<leader>dt',
      '<cmd>DiffviewToggleFiles<cr>',
      desc = '[D]iff [t]oggle files',
    },
    {
      '<leader>ds',
      '<cmd>DiffviewOpen HEAD~1<cr>',
      desc = '[D]iff [s]taged changes',
    },
  },
}
