return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = {
      {
        'jay-babu/mason-null-ls.nvim',
        cmd = { 'NullLsInstall', 'NullLsUninstall' },
        opts = { handlers = {} },
      },
    },
    event = 'User AstroFile',
    opts = function(_, opts)
      local null_ls = require 'null-ls'
      local formatting = null_ls.builtins.formatting
      local diagnostics = null_ls.builtins.diagnostics

      opts.sources = {
        formatting.prettier,
        formatting.eslint_d,
        formatting.stylua,
        -- formatting.beautysh.with {
        --   args = { '-i', '2' },
        -- },
        formatting.black.with { extra_args = { '--fast' } },
        formatting.shfmt.with {
          args = { '-i', '2' },
        },
        diagnostics.luacheck,
        diagnostics.flake8,
      }
      opts.on_attach = require('astronvim.utils.lsp').on_attach
      return opts
    end,
  },
}
