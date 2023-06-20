-- sidebar n stuff (this is probably terminal mode, will have to remap)
lvim.keys.normal_mode["<C-e>"] = "<Esc> :NvimTreeToggle<CR>"
-- lvim.keys.insert_mode["<C-e>"] = "<Esc> :NvimTreeToggle<CR>"

-- terminal config
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.size = 14
lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm<CR>"
lvim.keys.term_mode["<C-t>"] = "<Esc> <C-\\><C-n>:ToggleTerm<CR>"

-- navigate to previous edit location and next edit location
lvim.keys.normal_mode["<ca-h>"] = "<c-o>"
lvim.keys.insert_mode["<ca-h>"] = "<c-o><c-o>"

lvim.keys.normal_mode["<ca-l>"] = "<c-i>"
lvim.keys.insert_mode["<ca-l>"] = "<c-o><c-i>"

-- copy stuff to actual buffer
lvim.keys.visual_mode["<leader>y"] = "\"+y"
lvim.keys.normal_mode["<leader>p"] = "\"+p"

-- switch between tabs
lvim.keys.normal_mode["<S-tab>"] = ":lua print(\"shift\")<CR>"

