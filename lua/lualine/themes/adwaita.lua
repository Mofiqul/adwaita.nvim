-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local u = require'adwaita.utils'
local adwaita = {}
local colors = {}

colors = u.gen_colors() 


local bg = vim.o.background == 'dark' and colors.libadwaita_dark_alt or colors.light_3
local fg = vim.o.background == 'dark' and colors.light_2 or colors.dark_3


adwaita.normal = {
    a = { fg = bg, bg = colors.teal_5, gui = 'bold' },
    b = { fg = bg, bg = colors.teal_2 },
    c = { fg = fg, bg = bg },
}

adwaita.visual = {
    a = { fg = bg, bg = colors.blue_5, gui = 'bold' },
    b = { fg = fg, bg = bg },
}

adwaita.inactive = {
    b = { fg = fg, bg = bg },
    a = { fg = fg, bg = bg, gui = 'bold' },
}

adwaita.replace = {
    a = { fg = bg, bg = colors.purple_4, gui = 'bold' },
    b = { fg = bg, bg = colors.purple_2 },
    c = { fg = fg, bg = bg },
}

adwaita.insert = {
    a = { fg = bg, bg = colors.orange_4, gui = 'bold' },
    b = { fg = vim.o.background == 'dark' and bg or fg, bg = colors.orange_1 },
    c = { fg = fg, bg = bg },
}

return adwaita
