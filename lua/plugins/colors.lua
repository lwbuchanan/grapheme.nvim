return {
  { 'folke/tokyonight.nvim' },
  {
    'sainnhe/everforest',
    priority = 1000,
    version = false,
    lazy = false,
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.

      vim.cmd.colorscheme 'everforest'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  { 'rebelot/kanagawa.nvim' },
  { 'navarasu/onedark.nvim' },
}
