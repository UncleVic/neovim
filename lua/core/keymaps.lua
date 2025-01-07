-- Leader
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', '<leader>qq', ':wa<CR>:qa<CR>', { desc = "Close all" })

-- Insert
keymap.set('i', 'jk', '<Esc>', { desc = "Exit insert mode with jk" })

-- Buffers
keymap.set('n', '<leader>ws', ':w<CR>', { desc = "Save the current buffer" })
keymap.set('n', '<leader>wa', ':wa<CR>', { desc = "Save all buffers" })

-- Move lines
keymap.set("n", "˚", ":m .-2<CR>", { desc = "Move a line up in normal mode" })
keymap.set("n", "∆", ":m .+1<CR>", { desc = "Move a line down in normal mode" })
keymap.set("i", "˚", "<Esc>:m .-2<CR>gi", { desc = "Move a line up in insert mode" })
keymap.set("i", "∆", "<Esc>:m .+1<CR>gi", { desc = "Move a line down in insert mode" })
keymap.set("v", "˚", ":m '<-2<CR>gv", { desc = "Move a line up in visual mode" })
keymap.set("v", "∆", ":m '>+1<CR>gv", { desc = "Move a line down in visual mode" })

-- window management
keymap.set("n", "<leader>sv", ":wincmd v<CR>", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", ":wincmd s<CR>", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", ":wincmd =<CR>", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split" }) -- close current split window

-- Tabs (BufferLine)
keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tf", ":tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set('n', '<c-x>', ':BufferLineCloseOthers<CR>')

-- Neo-tree
keymap.set("n", "<leader>e", ":Neotree left toggle reveal<CR>")
