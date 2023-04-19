return {
  n = {
    ['<C-a>'] = { '$', desc = 'Move the cursor to the end of the line' },
    ['<C-i>'] = { '^', desc = 'Move the cursor to the beginning of the line' },
    ['<leader>H'] = { '<cmd>checkhealth<cr>', desc = 'Run cmd checkhealth' },
  },
  v = {
    ['<leader>y'] = { '"+y', desc = 'Copy to clipboard' },
  },
}
