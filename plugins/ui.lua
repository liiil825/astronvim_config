return {
  {
    'goolord/alpha-nvim',
    opts = function(_, opts) -- override the options using lazy.nvim
      opts.section.header.val = { -- change the header section value
        '    My Custom ',
        ' Dashboard Header',
      }
    end,
  },
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    config = function()
      require('notify').setup {
        background_colour = '#000000',
      }
    end,
    opts = {
      groups = { -- table: default groups
        'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLineNr',
        'EndOfBuffer',
      },
      extra_groups = {}, -- table: additional groups that should be cleared
      exclude_groups = {}, -- table: groups you don't want to clear
    },
  },
}
