return {
  -- In-buffer markdown rendering: styled headings, bullets, code blocks, tables
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    opts = {
      heading = {
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      code = {
        border = "thin",
        width = "block",
        min_width = 60,
      },
    },
  },

  -- Statusline branch from gitsigns instead of lualine's built-in "branch".
  -- lualine reads .git/HEAD itself and crashes on every BufEnter when that read
  -- fails, e.g. when iCloud evicts .git files in the ~/Antcortex vault repos.
  -- gitsigns asks git instead and shows no branch if that fails.
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_b = { { "b:gitsigns_head", icon = "\u{e0a0}" } }
    end,
  },
}
