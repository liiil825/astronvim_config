return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'windwp/nvim-ts-autotag',
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  event = 'User AstroFile',
  cmd = {
    'TSBufDisable',
    'TSBufEnable',
    'TSBufToggle',
    'TSDisable',
    'TSEnable',
    'TSToggle',
    'TSInstall',
    'TSInstallInfo',
    'TSInstallSync',
    'TSModuleInfo',
    'TSUninstall',
    'TSUpdate',
    'TSUpdateSync',
  },
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'astro',
      'css',
      'html',
      'javascript',
      'lua',
      'python',
      'tsx',
      'norg',
      'typescript',
      'vim',
      'vue',
    },

    highlight = {
      enable = true,
      disable = function(_, bufnr)
        return vim.api.nvim_buf_line_count(bufnr) > 10000
      end,
    },
    incremental_selection = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    context_commentstring = { enable = true, enable_autocmd = false },
  },
  config = require 'plugins.configs.nvim-treesitter',
}
