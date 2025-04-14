require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>")

-- Wrap with char
map({ "v" }, "'", "c'<Esc>pa'<Esc>", { desc = "Wrap with ''" })
map({ "v" }, "(", "c(<Esc>pa)<Esc>", { desc = "Wrap with ()" })
map({ "v" }, '"', 'c"<Esc>pa"<Esc>', { desc = 'Wrap with ""' })
map({ "v" }, "[", "c[<Esc>pa]<Esc>", { desc = "Wrap with []" })
map({ "v" }, "{", "c{<Esc>pa}<Esc>", { desc = "Wrap with {}" })

-- Swap lines
map({ "n" }, "<A-Up>", ":m .-2<CR>==", { desc = "Swap the line down", noremap = true, silent = true })
map({ "n" }, "<A-Down>", ":m .+1<CR>==", { desc = "Swap the line down", noremap = true, silent = true })
map({ "v" }, "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Swap the line down", noremap = true, silent = true })
map({ "v" }, "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Swap the line up", noremap = true, silent = true })

-- Save the files in any mode
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "v" }, "w", "<cmd> w <cr>")
