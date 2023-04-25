return {
  n = {
    ["<leader>H"] = { "<cmd>checkhealth<cr>", desc = "Run cmd checkhealth" },
    ["|"] = "",
    [";"] = { ":", desc = "Enter command mode" },
    ["\\"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
    ["-"] = { "<cmd>split<cr>", desc = "Horizontal split" },
  },
  v = {
    ["<leader>y"] = { '"+y', desc = "Copy to clipboard" },
  },
}
