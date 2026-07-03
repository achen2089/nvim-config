-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- nvim-treesitter (main branch) dropped the jsonc parser; parse jsonc with json
vim.treesitter.language.register("json", "jsonc")
