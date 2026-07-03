return {
  -- Modern Lua port of ayu with highlights for treesitter, bufferline,
  -- snacks, blink.cmp, etc. (the legacy ayu-vim predates all of these)
  {
    "Shatur/neovim-ayu",
    lazy = true,
    opts = {
      mirage = true,
      overrides = {
        Comment = { italic = true },
      },
    },
    config = function(_, opts)
      require("ayu").setup(opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- "ayu-dark" or "ayu-light" also work here
      colorscheme = "ayu-mirage",
    },
  },
}
