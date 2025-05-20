return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    version = false,
    lazy = false,
    init = function()
      vim.cmd.colorscheme 'onedark'
    end,
  },
  { 'rebelot/kanagawa.nvim' },
  { 'sainnhe/everforest' },
  { 'folke/tokyonight.nvim' },
}
