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
}
