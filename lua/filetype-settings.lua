-- Filetype-specific settings

-- Go: Use tabs instead of spaces (Go convention)
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function()
    vim.opt_local.expandtab = false  -- Use tabs, not spaces
    vim.opt_local.tabstop = 4        -- Tab width is 4 columns
    vim.opt_local.shiftwidth = 4     -- Indent width is 4 columns
    vim.opt_local.softtabstop = 4    -- Tab key inserts 4 columns
  end,
})

-- vim: ts=2 sts=2 sw=2 et
