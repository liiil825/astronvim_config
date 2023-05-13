require 'user.machine'

return {
  lsp = {
    -- formatting = {
    --   format_on_save = true, -- enable or disable automatic formatting on save
    -- },
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
