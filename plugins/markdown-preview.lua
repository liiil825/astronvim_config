return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    lazy = false,
    build = function() vim.fn["mkdp#util#install"]() end,
  },
}
