return {
  { -- Transparency
    'xiyaowong/transparent.nvim',
    priority = 1000,
    lazy = false,
    init = function()
      vim.g.transparent_enabled = true
      vim.keymap.set('n', '<leader>tt', require('transparent').toggle, { desc = '[T]oggle [T]ransparency' })
    end,
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
      local label = {
        --' ██████╗ ██████╗  █████╗ ██████╗ ██╗  ██╗███████╗███╗   ███╗███████╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
        --'██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██║  ██║██╔════╝████╗ ████║██╔════╝   ████╗  ██║██║   ██║██║████╗ ████║',
        --'██║  ███╗██████╔╝███████║██████╔╝███████║█████╗  ██╔████╔██║█████╗     ██╔██╗ ██║██║   ██║██║██╔████╔██║',
        --'██║   ██║██╔══██╗██╔══██║██╔═══╝ ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝     ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
        --'╚██████╔╝██║  ██║██║  ██║██║     ██║  ██║███████╗██║ ╚═╝ ██║███████╗██╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
        --' ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
      }
      local label2 = {
        [[ ]],
        [[ ]],
        [[                            /\ \                                  ]],
        [[   __   _ __    __     _____\ \ \___      __    ___ ___      __   ]],
        [[ /'_ `\/\`'__\/'__`\  /\ '__`\ \  _ `\  /'__`\/' __` __`\  /'__`\ ]],
        [[/\ \L\ \ \ \//\ \L\.\_\ \ \L\ \ \ \ \ \/\  __//\ \/\ \/\ \/\  __/ ]],
        [[\ \____ \ \_\\ \__/.\_\\ \ ,__/\ \_\ \_\ \____\ \_\ \_\ \_\ \____\]],
        [[ \/___L\ \/_/ \/__/\/_/ \ \ \/  \/_/\/_/\/____/\/_/\/_/\/_/\/____/]],
        [[   /\____/               \ \_\                                    ]],
        [[   \_/__/                 \/_/                                    ]],
      }
      local alpha = require 'alpha'
      local thetacustom = require 'alpha.themes.theta'
      thetacustom.header.val = label2
      alpha.setup(thetacustom.config)
    end,
  },
}
