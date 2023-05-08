require 'user.machine'

return {
  lsp = {
    config = {
      volar = function(opts)
        opts.filetypes = {
          'typescript',
          'vue',
        }
        return opts
      end,
    },
  },
  colorscheme = 'tokyonight',
}
