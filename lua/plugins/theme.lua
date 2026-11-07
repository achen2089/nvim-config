return {
  -- Modern Lua port of ayu with highlights for treesitter, bufferline,
  -- snacks, blink.cmp, etc. (the legacy ayu-vim predates all of these)
  {
    "Shatur/neovim-ayu",
    lazy = true,
    opts = {
      -- Variant used when 'background' is dark; light always gets ayu-light.
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
      -- Follow the terminal's light/dark theme. Plain "ayu" reads 'background'
      -- instead of setting it, so Nvim can set 'background' from the
      -- terminal's real background colour (OSC 11) at startup, and again when
      -- the terminal reports a theme change (DEC mode 2031). Changing
      -- 'background' reloads the colorscheme, which then picks its variant.
      --
      -- Don't use "ayu-mirage"/"ayu-dark"/"ayu-light" here: they set
      -- 'background' during startup, and Nvim treats that as a manual
      -- choice and turns off terminal detection.
      colorscheme = "ayu",
    },
  },
}
