return {
  "sindrets/diffview.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewFileHistory",
  },

  opts = {
    view = {
      default = {
        layout = "diff2_horizontal",
      },
      file_history = {
        layout = "diff2_horizontal",
      },
      merge_tool = {
        layout = "diff3_horizontal",
      },
    },

    keymaps = {
      view = {
        ["g<C-x>"] = false,
      },
      file_panel = {
        ["g<C-x>"] = false,
      },
      file_history_panel = {
        ["g<C-x>"] = false,
      },
    },
  },

  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview File History" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
  },
}
