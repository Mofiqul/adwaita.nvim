-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local adwaita = {}
local colors = {}

if vim.g.adwaita_mode == 'dark' then
    colors.bg = '#4F4F4F'
    colors.fg = '#DEDDDA'
else
    colors.bg = '#F6F5F4'
    colors.fg = '#3D3846'
end

adwaita.normal = {
    b = { fg = colors.fg, bg = colors.bg },
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    c = { fg = colors.fg, bg = colors.bg },
}

adwaita.visual = {
    a = { fg = colors.bg, bg = colors.fg, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
}

adwaita.inactive = {
    b = { fg = colors.bg, bg = colors.fg },
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
}

adwaita.replace = {
    b = { fg = colors.fg, bg = colors.bg },
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    c = { fg = colors.fg, bg = colors.bg },
}

adwaita.insert = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
}

return adwaita
