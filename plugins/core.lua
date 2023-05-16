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
  {
    'leoluz/nvim-dap-go',
    ft = 'go',
    event = 'User AstroFile',
    config = function()
      require('dap-go').setup {
        -- Additional dap configurations can be added.
        -- dap_configurations accepts a list of tables where each entry
        -- represents a dap configuration. For more details do:
        -- :help dap-configuration
        dap_configurations = {
          {
            -- Must be "go" or it will be ignored by the plugin
            type = 'go',
            name = 'Attach remote',
            mode = 'remote',
            request = 'attach',
          },
        },
        -- delve configurations
        delve = {
          -- time to wait for delve to initialize the debug session.
          -- default to 20 seconds
          initialize_timeout_sec = 20,
          -- a string that defines the port to start delve debugger.
          -- default to string "${port}" which instructs nvim-dap
          -- to start the process in a random available port
          port = '${port}',
        },
      }
    end,
  },
  {
    'L3MON4D3/LuaSnip',
    config = function(plugin, opts)
      require 'plugins.configs.luasnip'(plugin, opts) -- include the default astronvim config that calls the setup call
      require('luasnip.loaders.from_vscode').lazy_load {
        paths = { './lua/user/snippets' },
      } -- load snippets paths
    end,
  },
  {
    'ggandor/leap.nvim',
    keys = {
      { 's', mode = { 'n', 'x', 'o' }, desc = 'Leap forward to' },
      { 'S', mode = { 'n', 'x', 'o' }, desc = 'Leap backward to' },
      { 'gs', mode = { 'n', 'x', 'o' }, desc = 'Leap from windows' },
    },
    config = function(_, opts)
      local leap = require 'leap'
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end
      leap.add_default_mappings(true)
      vim.keymap.del({ 'x', 'o' }, 'x')
      vim.keymap.del({ 'x', 'o' }, 'X')
    end,
  },
}
