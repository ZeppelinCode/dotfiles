-- Accept the selected completion with <Tab> (in addition to LazyVim's default <CR>).
-- When the menu isn't open, <Tab> still jumps through snippet placeholders,
-- and otherwise falls back to inserting a normal tab.
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = { "select_and_accept", "snippet_forward", "fallback" },
      },
    },
  },
}
