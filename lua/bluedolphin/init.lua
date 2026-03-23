local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "bluedolphin"
  vim.o.background = "dark"

  local highlights = require("bluedolphin.highlights").get()

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Set terminal colors
  local p = require("bluedolphin.palette")
  vim.g.terminal_color_0 = p.terminal.black
  vim.g.terminal_color_1 = p.terminal.red
  vim.g.terminal_color_2 = p.terminal.green
  vim.g.terminal_color_3 = p.terminal.yellow
  vim.g.terminal_color_4 = p.terminal.blue
  vim.g.terminal_color_5 = p.terminal.magenta
  vim.g.terminal_color_6 = p.terminal.cyan
  vim.g.terminal_color_7 = p.terminal.white
  vim.g.terminal_color_8 = p.terminal.bright_black
  vim.g.terminal_color_9 = p.terminal.bright_red
  vim.g.terminal_color_10 = p.terminal.bright_green
  vim.g.terminal_color_11 = p.terminal.bright_yellow
  vim.g.terminal_color_12 = p.terminal.bright_blue
  vim.g.terminal_color_13 = p.terminal.bright_magenta
  vim.g.terminal_color_14 = p.terminal.bright_cyan
  vim.g.terminal_color_15 = p.terminal.bright_white
end

return M
