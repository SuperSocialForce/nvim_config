vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "H", "H", { noremap = true, silent = true, desc = "Cursor to top of screen" })
vim.keymap.set("n", "L", "L", { noremap = true, silent = true, desc = "Cursor to bottom of screen" })

vim.keymap.set("n", "<C-h>", "<cmd>bprevious<cr>", { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<C-l>", "<cmd>bnext<cr>", { noremap = true, silent = true, desc = "Next buffer" })
