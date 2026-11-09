return {
  {
    "WTFox/jellybeans.nvim",
    lazy = false,
    priority = 1000, -- Load this before other plugins
    config = function()
      vim.cmd.colorscheme("jellybeans")
    end,
  },
}
