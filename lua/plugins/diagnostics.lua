return {
  'rachartier/tiny-inline-diagnostic.nvim',
  event = 'LspAttach',
  priority = 1000,
  config = function()
    -- if vim.g.have_nerd_font then
    --   local signs = { ERROR = '', WARN = '', INFO = '', HINT = '' }
    --   local diagnostic_signs = {}
    --   for type, icon in pairs(signs) do
    --     diagnostic_signs[vim.diagnostic.severity[type]] = icon
    --   end
    -- end
    require('tiny-inline-diagnostic').setup {}
    vim.diagnostic.config {
      virtual_text = false,
    }
  end,
}
