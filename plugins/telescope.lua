return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      enabled = vim.fn.executable 'make' == 1,
      build = 'make',
    },
    { 'nvim-telescope/telescope-live-grep-args.nvim' },
    { 'JoosepAlviste/nvim-ts-context-commentstring' },
    'nvim-lua/plenary.nvim',
    'debugloop/telescope-undo.nvim',
  },
  cmd = 'Telescope',
  opts = function()
    local actions = require 'telescope.actions'
    local get_icon = require('astronvim.utils').get_icon
    return {
      defaults = {
        prompt_prefix = string.format('%s ', get_icon 'Search'),
        selection_caret = string.format('%s ', get_icon 'Selected'),
        path_display = { 'truncate' },
        sorting_strategy = 'ascending',
        layout_config = {
          horizontal = {
            prompt_position = 'top',
            preview_width = 0.55,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },

        mappings = {
          i = {
            ['<C-n>'] = actions.cycle_history_next,
            ['<C-p>'] = actions.cycle_history_prev,
            ['<C-j>'] = actions.move_selection_next,
            ['<C-k>'] = actions.move_selection_previous,
          },
          n = { ['q'] = actions.close },
        },
      },
    }
  end,
  config = function(_, opts)
    require('telescope').setup {
      extensions = {
        undo = {
          -- telescope-undo.nvim config, see below
          -- https://github.com/debugloop/telescope-undo.nvim#configuration
          side_by_side = true,
          layout_strategy = 'vertical',
          layout_config = {
            preview_height = 0.8,
          },
        },
      },
    }
    require('telescope').load_extension 'undo'
    -- optional: vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    require 'plugins.configs.telescope' (_, opts)
  end,
}
