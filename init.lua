return {
  colorscheme = 'tokyonight',
  plugins = {
    {
      'goolord/alpha-nvim',
      opts = function(_, opts)      -- override the options using lazy.nvim
        opts.section.header.val = { -- change the header section value
          '    My Custom ',
          ' Dashboard Header',
        }
      end,
    },
  },
}