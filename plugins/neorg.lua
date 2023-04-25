return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
              vite = "~/Github/vite-project",
            },
            default_workspace = "notes",
          },
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
}
