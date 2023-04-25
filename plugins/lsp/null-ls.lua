return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    opts.sources = {
      formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-singin-quote" } },
      -- formatting.eslint_d,
      formatting.stylua,
      formatting.black.with { extra_args = { "--fast" } },
      formatting.shfmt.with {
        args = { "-i", "2" },
      },
      diagnostics.luacheck,
      diagnostics.flake8,
    }
    return opts
  end,
}
