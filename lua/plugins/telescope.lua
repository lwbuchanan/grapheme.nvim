return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    keys = {
        { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find Files"},
        { "<leader>sp", "<cmd>Telescope git_files<cr>", desc = "Find Git files"},
        { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Search with Grep"},
        { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "Search buffers"},
        { "<leader>sc", "<cmd>Telescope colorscheme<cr>", desc = "Search colors"},
    },
    opts = {},
}
