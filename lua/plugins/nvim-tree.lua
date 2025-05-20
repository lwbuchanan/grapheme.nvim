return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    vim.keymap.set('n', '<leader>tf', vim.cmd.NvimTreeToggle, { desc = '[T]oggle [F]iles' }),
    vim.keymap.set('n', '<leader>of', vim.cmd.NvimTreeFocus, { desc = '[O]pen [F]iles' }),
  },
}
