local M = {}

M.n = {
  ['<C-f>'] = { '<C-d>', noremap = true },
  ['<C-d>'] = { '<C-u>', noremap = true },
  ['<leader>bp'] = { '<Cmd>bprevious<CR>', desc = 'Prev buffer' },
  ['<leader>bn'] = { '<Cmd>bnext<CR>', desc = 'Next buffer' },
  ['<leader>lm'] = { '<Cmd>Mason<CR>', desc = 'Mason' },
  ['<M-[>'] = { '<Cmd>bprevious<CR>', desc = 'Prev buffer' },
  ['<M-]>'] = { '<Cmd>bnext<CR>', desc = 'Next buffer' },
  ['<leader>H'] = { '<Cmd>checkhealth<CR>', desc = 'Run cmd checkhealth' },
  ['<leader>lu'] = { '<Cmd>Telescope undo<CR>', desc = 'Telescope undo' },
  ['<leader>uT'] = {
    '<cmd>TransparentToggle<cr>',
    desc = 'Toggle transparent',
  },
  ['<leader>fw'] = {
    function() require('telescope').extensions.live_grep_args.live_grep_args() end,
    desc = 'Find words',
  },
  ['<leader>fW'] = {
    function()
      require('telescope').extensions.live_grep_args.live_grep_args {
        additional_args = function(args)
          return vim.list_extend(args, { '--hidden', '--no-ignore' })
        end,
      }
    end,
    desc = 'Find words',
  },
  ['|'] = '',
  [';'] = { ':', desc = 'Enter command mode' },
  ['\\'] = { '<Cmd>vsplit<CR>', desc = 'Vertical split' },
  ['-'] = { '<Cmd>split<CR>', desc = 'Horizontal split' },
  ['<leader>:'] = {
    '<Cmd>Telescope command_history<CR>',
    desc = 'Command History',
  },
  ['<localleader>m'] = {
    '<Cmd>MarkdownPreviewToggle<CR>',
    desc = 'Markdown Preview Toggle',
  },
  ['<localleader>n'] = { desc = ' Neorg' },
  ['<localleader>ni'] = { '<Cmd>Neorg index<CR>', desc = 'Neorg index' },
  ['<localleader>ng'] = {
    '<Cmd>e ~/notes/todo.norg<CR>',
    desc = 'Neorg todo list',
  },
  ['<localleader>nr'] = { '<Cmd>Neorg return<CR>', desc = 'Neorg return' },
  ['<localleader>nj'] = { '<Cmd>Neorg journal<CR>', desc = 'Neorg journal' },
  ['<localleader>nw'] = { ':Neorg workspace ', desc = 'Neorg workspaces' },
}
M.v = {
  ['<leader>y'] = { '"+y', desc = 'Copy to clipboard' },
}
M.x = {
  ['s'] = { desc = 'Surround' },
  ['sk'] = {
    -- ':<C-u>normal! `>a*<esc>`<i*<esc>',
    "<Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = false })<CR>*",
    desc = '*{visual selection}*',
  },
  ['sl'] = {
    "<Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = false })<CR>(",
    desc = '({visual selection})',
  },
  ['<tab>'] = { '<Esc><Cmd>Tabularize /:\zs/<CR>', desc = 'Tabularize' },
}

return M
