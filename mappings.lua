return {
  n = {
    ["<leader>bp"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<leader>bn"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<M-[>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" },
    ["<M-]>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<leader>H"] = { "<cmd>checkhealth<cr>", desc = "Run cmd checkhealth" },
    ["<leader>fw"] = {
      function() require("telescope").extensions.live_grep_args.live_grep_args() end,
      desc = "Find words",
    },
    ["|"] = "",
    [";"] = { ":", desc = "Enter command mode" },
    ["\\"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
    ["-"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["<leader>:"] = { "<cmd>Telescope command_history<cr>", desc = "Command History" },
    ["<localleader>m"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview Toggle" },
    ["<localleader>n"] = { desc = " Neorg" },
    ["<localleader>ni"] = { "<cmd>Neorg index<cr>", desc = "Neorg index" },
    ["<localleader>nt"] = { "<cmd>Neorg index<cr>", desc = "Neorg index" },
    ["<localleader>nr"] = { "<cmd>Neorg return<cr>", desc = "Neorg return" },
    ["<localleader>nj"] = { "<cmd>Neorg journal<cr>", desc = "Neorg journal" },
    ["<localleader>nw"] = { ":Neorg workspace ", desc = "Neorg workspaces" },
  },
  v = {
    ["<leader>y"] = { '"+y', desc = "Copy to clipboard" },
  },
}
