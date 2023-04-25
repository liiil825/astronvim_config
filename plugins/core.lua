return {
  {
    "sei40kr/nvimacs", -- Bring Emacs key bindings to Neovim.
    event = {
      "InsertEnter *",
      "CmdlineEnter *",
    },
    config = function()
      vim.keymap.set("n", "<C-e>", "$")
      vim.keymap.set("n", "<C-a>", "^")
      vim.keymap.set("i", "<C-a>", "<C-o>^", { noremap = true })
    end,
  },
}
