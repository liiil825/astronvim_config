return {
  {
    "sei40kr/nvimacs", -- Bring Emacs key bindings to Neovim.
    event = {
      "InsertEnter *",
      "CmdlineEnter *",
    },
    config = function() vim.keymap.set("i", "<C-a>", "<C-o>^", { noremap = true }) end,
  },
  {
    "natecraddock/workspaces.nvim",
    lazy = false,
    opts = {
      glocal_cd = true,
      hooks = {
        open = { "Telescope find_files" },
      },
    },
  },
}
