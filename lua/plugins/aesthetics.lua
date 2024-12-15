return {
  { -- Transparency
    'xiyaowong/transparent.nvim',
    priority = 1000,
    lazy = false,
    init = function()
      vim.g.transparent_enabled = true
    end,
  },

  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}
