return {
  n = {
    ['<leader>H'] = { '<cmd>checkhealth<cr>', desc = 'Run cmd checkhealth' },
    ['|'] = '',
    ['\\'] = { '<cmd>vsplit<cr>', desc = 'Vertical split' },
    ['-'] = { '<cmd>split<cr>', desc = 'Horizontal split' },
  },
  v = {
    ['<leader>y'] = { '"+y', desc = 'Copy to clipboard' },
  },
}
