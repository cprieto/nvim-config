local keymap = require'utils'.key_mapper

local expr_opts = { noremap = true, expr = true, silent = true }

-- Center search results
keymap("n", "n", "nzz")
keymap("n", "N", "Nzz")

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>")
keymap("n", "<S-l>", ":bnext<CR>")

-- Cancel search highlight with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>")
