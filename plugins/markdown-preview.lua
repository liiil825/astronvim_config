return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    lazy = false,
    keys = {
      {
        "<leader>wp",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview Toggle",
      },
    },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
