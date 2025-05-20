return {
  { -- Transparency
    'xiyaowong/transparent.nvim',
    --priority = 1000,
    --lazy = false,
    --init = function()
    --  vim.g.transparent_enabled = false
    --  vim.keymap.set('n', '<leader>to', require('transparent').toggle, { desc = '[T]oggle [O]pacity' })
    --end,
  },

  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },

  { -- Startup page
    'goolord/alpha-nvim',
    dependencies = {
      'echasnovski/mini.icons',
      'nvim-lua/plenary.nvim',
    },

    config = function()
      local logo = [[

 ██████╗ ██████╗  █████╗ ██████╗ ██╗  ██╗███████╗███╗   ███╗███████╗
██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██║  ██║██╔════╝████╗ ████║██╔════╝
██║  ███╗██████╔╝███████║██████╔╝███████║█████╗  ██╔████╔██║█████╗  
██║   ██║██╔══██╗██╔══██║██╔═══╝ ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  
╚██████╔╝██║  ██║██║  ██║██║     ██║  ██║███████╗██║ ╚═╝ ██║███████╗
 ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝
      ]]
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      local thetac = require 'alpha.themes.theta'
      thetac.header.val = vim.split(logo, '\n')
      thetac.buttons.val = {
        { type = 'text', val = 'Quick links', opts = { hl = 'SpecialComment', position = 'center' } },
        { type = 'padding', val = 1 },
        dashboard.button('e', '  New file', '<cmd>ene<CR>'),
        dashboard.button('SPC s f', '󰈞  Search files'),
        dashboard.button('SPC s g', '󰊄  Search with grep'),
        dashboard.button('c', '  Configuration', '<cmd>cd ~/.config/grapheme.nvim<CR>'),
        dashboard.button('u', '  Update plugins', '<cmd>Lazy sync<CR>'),
        dashboard.button('q', '󰅚  Quit', '<cmd>qa<CR>'),
      }
      alpha.setup(thetac.config)
    end,
  },
}
