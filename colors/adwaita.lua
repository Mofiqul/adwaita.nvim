local adwaita_dark = require'adwaita.dark'
local adwaita_light = require'adwaita.light'

vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "adwaita"

if vim.g.adwaita_mode == 'dark' then
    vim.o.background = "dark"
    adwaita_dark.set()
else
    vim.o.background = "light"
    adwaita_light.set()
end
