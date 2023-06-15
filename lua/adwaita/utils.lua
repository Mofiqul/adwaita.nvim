local M = {}

local nvim_set_hl = function(ns_id)
    return function(name, val)
        vim.api.nvim_set_hl(ns_id, name, val)
    end
end

M.highlight = nvim_set_hl(0)

M.gen_colors = function()
    local colors
    if vim.o.background == 'dark' then
        colors = {
            blue_1              = "#99C1F1",
            blue_2              = "#62A0EA",
            blue_3              = "#3584E4",
            blue_4              = "#1C71D8",
            blue_5              = "#1A5FB4",
            blue_6              = "#1B497E",
            blue_7              = "#193D66",
            brown_1             = "#CDAB8F",
            brown_2             = "#B5835A",
            brown_3             = "#986A44",
            brown_4             = "#865E3C",
            brown_5             = "#63452C",
            chameleon_3         = "#4E9A06",
            dark_1              = "#77767B",
            dark_2              = "#5E5C64",
            dark_3              = "#504E55",
            dark_4              = "#3D3846",
            dark_5              = "#241F31",
            dark_6              = "#000000",
            dark_7              = "#1c1c1c",
            green_1             = "#8FF0A4",
            green_2             = "#57E389",
            green_3             = "#33D17A",
            green_4             = "#2EC27E",
            green_5             = "#26A269",
            green_6             = "#1F7F56",
            green_7             = "#1C6849",
            libadwaita_dark     = "#1D1D1D",
            libadwaita_dark_alt = "#303030",
            libadwaita_popup    = "#282828",
            libadwaita_tree     = "#242424",
            light_1             = "#FFFFFF",
            light_2             = "#FCFCFC",
            light_3             = "#F6F5F4",
            light_4             = "#DEDDDA",
            light_5             = "#C0BFBC",
            light_6             = "#B0AFAC",
            light_7             = "#9A9996",
            orange_1            = "#FFBE6F",
            orange_2            = "#FFA348",
            orange_3            = "#FF7800",
            orange_4            = "#E66100",
            orange_5            = "#C64600",
            purple_1            = "#DC8ADD",
            purple_2            = "#C061CB",
            purple_3            = "#9141AC",
            purple_4            = "#813D9C",
            purple_5            = "#613583",
            red_1               = "#F66151",
            red_2               = "#ED333B",
            red_3               = "#E01B24",
            red_4               = "#C01C28",
            red_5               = "#A51D2D",
            teal_1              = "#93DDC2",
            teal_2              = "#5BC8AF",
            teal_3              = "#33B2A4",
            teal_4              = "#26A1A2",
            teal_5              = "#218787",
            violet_2            = "#7D8AC7",
            violet_3            = "#6362C8",
            violet_4            = "#4E57BA",
            yellow_1            = "#F9F06B",
            yellow_2            = "#F8E45C",
            yellow_3            = "#F6D32D",
            yellow_4            = "#F5C211",
            yellow_5            = "#E5A50A",
            yellow_6            = "#D38B09",
            split_and_borders   = "#4F4F4F",
            menu_selected       = "#393939"
        }
    else
        colors = {
            blue_1      = "#99C1F1",
            blue_2      = "#62A0EA",
            blue_3      = "#3584E4",
            blue_4      = "#1C71D8",
            blue_5      = "#1A5FB4",
            blue_6      = "#1B497E",
            blue_7      = "#193D66",
            brown_1     = "#CDAB8F",
            brown_2     = "#B5835A",
            brown_3     = "#986A44",
            brown_4     = "#865E3C",
            brown_5     = "#63452C",
            chameleon_3 = "#4E9A06",
            dark_1      = "#77767B",
            dark_2      = "#5E5C64",
            dark_3      = "#504E55",
            dark_4      = "#3D3846",
            dark_5      = "#241F31",
            dark_6      = "#000000",
            green_1     = "#8FF0A4",
            green_2     = "#57E389",
            green_3     = "#33D17A",
            green_4     = "#2EC27E",
            green_5     = "#26A269",
            green_6     = "#1F7F56",
            green_7     = "#1C6849",
            light_1     = "#FFFFFF",
            light_2     = "#FCFCFC",
            light_3     = "#F6F5F4",
            light_4     = "#DEDDDA",
            light_5     = "#C0BFBC",
            light_6     = "#B0AFAC",
            light_7     = "#9A9996",
            orange_1    = "#FFBE6F",
            orange_2    = "#FFA348",
            orange_3    = "#FF7800",
            orange_4    = "#E66100",
            orange_5    = "#C64600",
            purple_1    = "#DC8ADD",
            purple_2    = "#C061CB",
            purple_3    = "#9141AC",
            purple_4    = "#813D9C",
            purple_5    = "#613583",
            red_1       = "#F66151",
            red_2       = "#ED333B",
            red_3       = "#E01B24",
            red_4       = "#C01C28",
            red_5       = "#A51D2D",
            teal_1      = "#93DDC2",
            teal_2      = "#5BC8AF",
            teal_3      = "#33B2A4",
            teal_4      = "#26A1A2",
            teal_5      = "#218787",
            violet_2    = "#7D8AC7",
            violet_3    = "#6362C8",
            violet_4    = "#4E57BA",
            yellow_1    = "#F9F06B",
            yellow_2    = "#F8E45C",
            yellow_3    = "#F6D32D",
            yellow_4    = "#F5C211",
            yellow_5    = "#E5A50A",
            yellow_6    = "#D38B09",
        }
    end
    if vim.g.adwaita_darker then
        colors.libadwaita_dark     = "#000000"
        colors.libadwaita_dark_alt = "#1c1c1c"
        colors.libadwaita_tree     = "#101010"
        colors.split_and_borders   = "#1e1e1e"
    end

    if vim.g.adwaita_transparent then
        colors.libadwaita_dark = 'none'
    end

    return colors
end

return M
