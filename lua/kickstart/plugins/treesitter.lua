return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    config = function()
      local has_c_compiler = false
      for _, exe in ipairs { 'cc', 'gcc', 'clang', 'cl', 'zig' } do
        if vim.fn.executable(exe) == 1 then
          has_c_compiler = true
          break
        end
      end

      local ensure_installed = {}
      -- nvim-treesitter compiles its parsers locally. Existing parsers continue
      -- to work without a compiler, but installing or updating them does not.
      -- Defer all install attempts until a compiler is available.
      if has_c_compiler then
        ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'go' }
      end

      require('nvim-treesitter.configs').setup {
        ensure_installed = ensure_installed,
        auto_install = has_c_compiler,
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  },
}
-- vim: ts=2 sts=2 sw=2 et
