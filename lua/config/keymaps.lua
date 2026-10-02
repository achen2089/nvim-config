-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- macOS-style navigation: Option = word, Cmd = line / document
-- Requires the Ghostty keybinds in ~/Library/Application Support/com.mitchellh.ghostty/config
local map = vim.keymap.set

-- Option + Left/Right: word to word
map({ "n", "x" }, "<M-Left>", "b", { desc = "Word left" })
map({ "n", "x" }, "<M-Right>", "w", { desc = "Word right" })
map("i", "<M-Left>", "<C-o>b", { desc = "Word left" })
map("i", "<M-Right>", "<C-o>w", { desc = "Word right" })
map("c", "<M-Left>", "<C-Left>")
map("c", "<M-Right>", "<C-Right>")

-- Cmd + Left/Right (arrives as Home/End): start / end of line
map({ "n", "x" }, "<Home>", "^", { desc = "Line start" })
map({ "n", "x" }, "<End>", "$", { desc = "Line end" })
map("i", "<Home>", "<C-o>^", { desc = "Line start" })

-- Cmd + Up/Down (arrives as C-Home/C-End): start / end of file
map({ "n", "x" }, "<C-Home>", "gg", { desc = "Top of file" })
map({ "n", "x" }, "<C-End>", "G", { desc = "End of file" })
map("i", "<C-Home>", "<C-o>gg", { desc = "Top of file" })
map("i", "<C-End>", "<C-o>G", { desc = "End of file" })
