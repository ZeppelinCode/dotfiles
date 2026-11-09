-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Go to definition
keymap("n", "<D-b>", vim.lsp.buf.definition, opts)

-- Go to previous edit location
keymap("n", "<C-D-h>", "<C-o>", opts)
keymap("i", "<C-D-h>", "<C-o>", opts)

-- Go to next edit location
keymap("n", "<C-D-l>", "<C-i>", opts)
keymap("i", "<C-D-l>", "<C-i>", opts)

-- Comment toggle (Cmd+/)
-- remap = true is required because gc/gcc are mappings, not built-in commands
local remap = { remap = true, silent = true }
keymap("n", "<D-/>", "gcc", remap)
keymap("x", "<D-/>", "gc", remap)
keymap("i", "<D-/>", "<Cmd>normal gcc<CR>", remap)

-- Toggle terminal (Ctrl+T)
keymap("n", "<C-t>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, opts)
keymap("i", "<C-t>", function()
  vim.cmd("stopinsert")
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, opts)
-- Inside the terminal: Ctrl+T hides it (the shell keeps running)
keymap("t", "<C-t>", "<Cmd>close<CR>", opts)
