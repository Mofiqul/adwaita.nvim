vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "adwaita"

if vim.o.background == 'dark' then
    local adwaita_dark = require'adwaita.dark'
    adwaita_dark.set()
else
    local adwaita_light = require'adwaita.light'
    adwaita_light.set()
end
