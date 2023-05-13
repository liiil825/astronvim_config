return {
  {
    'liiil825/nvimacs', -- Bring Emacs key bindings to Neovim.
    event = {
      'InsertEnter *',
      'CmdlineEnter *',
    },
  },
  {
    'godlygeek/tabular',
    event = 'User AstroFile',
  },
  {
    'dhruvasagar/vim-table-mode', -- table 自动
    event = 'User AstroFile',
  },
  'ThePrimeagen/git-worktree.nvim',
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
