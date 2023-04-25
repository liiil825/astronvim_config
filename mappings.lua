return {
  n = {
    ["<leader>H"] = { "<cmd>checkhealth<cr>", desc = "Run cmd checkhealth" },
    ["|"] = "",
    [";"] = { ":", desc = "Enter command mode" },
    ["\\"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
    ["-"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["<leader>:"] = { "<cmd>Telescope command_history<cr>", desc = "Command History" },
    ["<localleader>w"] = { desc = "Workspace" },
    ["<localleader>wa"] = { ":WorkspacesAdd ", desc = "Workspaces add" },
    ["<localleader>wA"] = { ":WorkspacesAddDir ", desc = "Workspaces add dir" },
    ["<localleader>wo"] = { ":WorkspacesOpen ", desc = "Workspaces open" },
    ["<localleader>wr"] = { ":WorkspacesRemove ", desc = "Workspaces remove" },
    ["<localleader>wR"] = { ":WorkspacesRemoveDir ", desc = "Workspaces remove dir" },
    ["<localleader>wl"] = { "<cmd>WorkspacesList<cr>", desc = "Workspaces List" },
    ["<localleader>n"] = { desc = "Neorg" },
    ["<localleader>ni"] = { "<cmd>Neorg index<cr>", desc = "Neorg index" },
    ["<localleader>nr"] = { "<cmd>Neorg return<cr>", desc = "Neorg return" },
    ["<localleader>nj"] = { "<cmd>Neorg journal<cr>", desc = "Neorg journal" },
    ["<localleader>nw"] = { ":Neorg workspace ", desc = "Neorg workspaces" },
  },
  v = {
    ["<leader>y"] = { '"+y', desc = "Copy to clipboard" },
  },
}
