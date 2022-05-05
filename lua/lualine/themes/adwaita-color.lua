-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local adwaita = {}
local colors = {}

if vim.o.background == 'dark' then
    if vim.g.adwaita_darker == true then
        colors.bg = '#1c1c1c'
    else
        colors.bg = '#303030'
    end
    colors.fgbar = colors.bg
    colors.fg = '#DEDDDA'
    colors.bar = '#5bc8af'
else
    colors.bg = '#F6F5F4'
    colors.fg = '#3D3846'
    colors.fgbar = '#1c1c1c'
    colors.bar = '#218787'
end

adwaita.normal = {
    a = { fg = colors.fgbar, bg = colors.bar, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
}

adwaita.visual = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bar },
}

adwaita.inactive = {
    b = { fg = colors.fg, bg = colors.bg },
    a = { fg = colors.fg, bg = colors.bar, gui = 'bold' },
}

adwaita.replace = {
    a = { fg = colors.fgbar, bg = colors.bar, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
}

adwaita.insert = {
    a = { fg = colors.fgbar, bg = colors.bar, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
}

return adwaita
