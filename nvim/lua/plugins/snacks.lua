return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          -- Show dotfiles and gitignored files in the file tree explorer
          explorer = {
            hidden = true,
            ignored = true,
          },
          -- ...and make them searchable by name (<leader>ff, <leader><space>)
          files = {
            hidden = true,
            ignored = true,
          },
          -- ...and by content (<leader>/, <leader>sg, <leader>sG)
          grep = {
            hidden = true,
            ignored = true,
          },
          -- ...including word/selection grep (<leader>sw, <leader>sW)
          grep_word = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
