--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup {

  -- Miscellaneous Plugins
  require 'plugins/misc',

  -- Navigation
  require 'plugins/which-key',
  require 'plugins/telescope',

  -- LSP / Formatting / Completion
  require 'plugins/lsp',
  require 'plugins/autoformat',
  require 'plugins/autocompletion',

  -- Aesthetics
  require 'plugins/aesthetics',
  require 'plugins/colors',
  require 'plugins/treesitter',

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
}
