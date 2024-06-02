vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("", "H", "^")
vim.keymap.set("", "L", "$")
vim.keymap.set("n", "Y", "y$")

vim.keymap.set("n", "<leader>y", ":%y<cr>", { desc = "Yank buffer" })
vim.keymap.set("n", "<leader>y", ":%y+<cr>", { desc = "Yank buffer to system clipboard" })

-- azerty
vim.keymap.set("", "ù", "[")
vim.keymap.set("", "µ", "]")
vim.keymap.set("", "ç", "{")
vim.keymap.set("", "à", "}")

vim.keymap.set("n", "q:", "")
vim.keymap.set("n", "q/", "")
