local u = require 'adwaita.utils'
local colors = u.gen_colors()

local hl = u.highlight

local M = {}

local set_terminal_color = function()
    vim.g.terminal_color_0          = colors.libadwaita_dark
    vim.g.terminal_color_1          = colors.red_2
    vim.g.terminal_color_2          = colors.green_2
    vim.g.terminal_color_3          = colors.orange_3
    vim.g.terminal_color_4          = colors.blue_2
    vim.g.terminal_color_5          = colors.purple_3
    vim.g.terminal_color_6          = colors.teal_2
    vim.g.terminal_color_7          = colors.light_4
    vim.g.terminal_color_8          = colors.light_7
    vim.g.terminal_color_9          = colors.red_1
    vim.g.terminal_color_10         = colors.green_1
    vim.g.terminal_color_11         = colors.orange_2
    vim.g.terminal_color_12         = colors.blue_1
    vim.g.terminal_color_13         = colors.purple_1
    vim.g.terminal_color_14         = colors.teal_1
    vim.g.terminal_color_15         = colors.light_3
    vim.g.terminal_color_background = colors.libadwaita_dark
    vim.g.terminal_color_foreground = colors.light_4
end

M.set = function()
    set_terminal_color()

    -- UI highlight
    hl('Normal', { fg = colors.light_4, bg = colors.libadwaita_dark })
    hl('NormalFloat', { fg = colors.light_4, bg = colors.libadwaita_popup })
    hl('FloatBorder', { fg = colors.split_and_borders, bg = colors.libadwaita_popup })
    hl('ColorColumn', { bg = colors.libadwaita_dark_alt })
    hl('Cursor', { fg = colors.libadwaita_dark, bg = colors.light_5 })
    hl('CursorLine', { bg = colors.libadwaita_dark_alt })
    hl('CursorColumn', { bg = colors.libadwaita_dark_alt })
    hl('Directory', { fg = colors.light_1, bg = colors.libadwaita_dark })
    hl('DiffAdd', { fg = colors.teal_3, bg = colors.libadwaita_dark })
    hl('DiffChange', { fg = colors.orange_3, bg = colors.libadwaita_dark })
    hl('DiffDelete', { fg = colors.red_1, bg = colors.libadwaita_dark })
    hl('DiffText', { fg = colors.violet_2, bg = colors.libadwaita_dark })
    hl('EndOfBuffer', { fg = colors.libadwaita_dark, bg = colors.libadwaita_dark })
    hl('ErrorMsg', { fg = colors.red_3, bg = colors.libadwaita_dark, underline = true })
    hl('VertSplit', { fg = colors.split_and_borders, bg = colors.libadwaita_dark })
    hl('WinSeparator', { link = 'VertSplit' })
    hl('Folded', { fg = colors.dark_1, bg = colors.libadwaita_dark })
    hl('FoldColumn', { fg = colors.dark_1, bg = colors.libadwaita_dark })
    hl('SignColumn', { fg = colors.dark_2, bg = colors.libadwaita_dark })
    hl('IncSearch', { fg = colors.dark_4, bg = colors.yellow_4 })
    hl('LineNr', { fg = colors.dark_2, bg = colors.libadwaita_dark })
    hl('CursorLineNr', {
        fg = colors.light_7,
        bg = vim.g.adwaita_disable_cursorline and 'NONE' or colors.libadwaita_dark_alt
    })
    hl('MatchParen', { fg = colors.light_4, bold = true })
    hl('ModeMsg', { fg = colors.light_4, bg = colors.libadwaita_dark_alt })
    hl('MoreMsg', { fg = colors.light_4, bg = colors.libadwaita_dark_alt })
    hl('NonText', { fg = colors.dark_4 })
    hl('Pmenu', { fg = colors.light_4, bg = colors.libadwaita_popup })
    hl('PmenuSel', { fg = colors.light_4, bg = colors.menu_selected })
    hl('PmenuSbar', { bg = colors.dark_3 })
    hl('PmenuThumb', { bg = colors.dark_1 })
    hl('Question', { fg = colors.blue_1, bg = colors.libadwaita_dark })
    hl('Search', { fg = colors.dark_4, bg = colors.yellow_4 })
    hl('SpecialKey', { fg = colors.dark_2, bg = colors.libadwaita_dark })
    hl('StatusLine', { fg = colors.light_4, bg = colors.libadwaita_dark_alt })
    hl('StatusLineNC', { fg = colors.light_4, bg = colors.libadwaita_dark })
    hl('Tabline', { fg = colors.light_4, bg = colors.libadwaita_dark_alt })
    hl('TablineFill', { fg = colors.light_4, bg = colors.libadwaita_dark_alt })
    hl('TablineSel', { fg = colors.light_4, bg = colors.libadwaita_dark })
    hl('Title', { bold = true })
    hl('Visual', { bg = colors.blue_7 })
    hl('VisualNOS', { bg = colors.blue_7 })
    hl('WarningMsg', { fg = colors.yellow_4, bold = true })
    hl('WildMenu', { fg = colors.light_4, bg = colors.blue_5 })


    -- Syntax highlight
    hl('Comment', { fg = colors.dark_2 })
    hl('Constant', { fg = colors.violet_2 })
    hl('String', { fg = colors.teal_2 })
    hl('Character', { fg = colors.teal_3 })
    hl('Number', { fg = colors.teal_3 })
    hl('Boolean', { fg = colors.purple_2, bold = true })
    hl('Float', { fg = colors.teal_3 })
    hl('Identifier', { fg = colors.orange_2 })
    hl('Function', { fg = colors.blue_2 })
    hl('Statement', { fg = colors.orange_2, bold = true })
    hl('Conditional', { fg = colors.orange_2, bold = true })
    hl('Repeat', { fg = colors.orange_2, bold = true })
    hl('Label', { fg = colors.purple_2 })
    hl('Operator', { fg = colors.purple_2 })
    hl('Keyword', { fg = colors.orange_2, bold = true })
    hl('Exception', { fg = colors.orange_2, bold = true })
    hl('PreProc', { fg = colors.orange_2 })
    hl('Include', { fg = colors.orange_2 })
    hl('Define', { fg = colors.orange_2, bold = true })
    hl('Macro', { fg = colors.orange_2 })
    hl('PreCondit', { fg = colors.orange_2, bold = true })
    hl('Type', { fg = colors.teal_2 })
    hl('StorageClass', { fg = colors.orange_2, bold = true })
    hl('Structure', { fg = colors.teal_2, bold = true })
    hl('TypeDef', { fg = colors.teal_2, bold = true })
    hl('Special', { fg = colors.blue_2 })
    hl('SpecialChar', { fg = colors.blue_2 })
    hl('Tag', { fg = colors.teal_2 })
    hl('Delimiter', { fg = colors.teal_2 })
    hl('SpecialComment', { fg = colors.dark_2, bold = true })
    hl('Debug', { fg = colors.yellow_2 })
    hl('Underlined', { underline = true })
    hl('Ignore', { fg = colors.light_4 })
    hl('Error', { fg = colors.red_3, underline = true })
    hl('SpellBad', { fg = colors.red_3, underline = true, sp = colors.red_3 })
    hl('SpellCap', { fg = colors.red_3, underline = true, sp = colors.red_3 })
    hl('SpellRare', { fg = colors.red_3, underline = true, sp = colors.red_3 })
    hl('SpellLocale', { fg = colors.red_3, underline = true, sp = colors.red_3 })
    hl('Todo', { fg = colors.yellow_2, bold = true })
    hl('Whitespace', { fg = colors.dark_4 })

    --- Treesitter highlight
    hl('@error', { fg = colors.red_3 })
    hl('@text.literal', { fg = colors.light_4 })
    hl('@text.literal.markdown', { fg = colors.light_4 })
    hl('@text.literal.markdown.inline', { fg = colors.light_4 })
    hl('@text.title', { fg = colors.teal_2, bold = true })
    hl('@text.emphasis', { fg = colors.teal_2, italic = true })
    hl('@text.strong', { fg = colors.teal_2, bold = true })
    hl('@text.uri', { fg = colors.blue_3, underline = true })
    hl('@textReference', { fg = colors.blue_3 })
    hl('@text.underline', { underline = true })
    hl('@text.todo', { fg = colors.yellow_2, bold = true })
    hl('@text.note', { fg = colors.green_3, bold = true })
    hl('@text.warning', { fg = colors.yellow_2, bold = true })
    hl('@text.danger', { fg = colors.red_3, bold = true })
    hl('@comment', { fg = colors.dark_2 })
    hl('@punctuation', { fg = colors.light_4 })
    hl('@punctuation.special', { fg = colors.teal_2 })
    hl('@punctuation.bracket', { fg = colors.light_4 })
    hl('@punctuation.delimiter', { fg = colors.light_4 })
    hl('@constant', { fg = colors.violet_2 })
    hl('@constant.builtin', { fg = colors.violet_2, bold = true })
    hl('@constant.macro', { fg = colors.orange_2, bold = true })
    hl('@define', { fg = colors.orange_2, bold = true })
    hl('@macro', { fg = colors.orange_2, bold = true })
    hl('@string', { fg = colors.teal_2 })
    hl('@string.escape', { fg = colors.blue_2 })
    hl('@stringEscape', { fg = colors.blue_2 })
    hl('@string.special', { fg = colors.blue_2 })
    hl('@string.regex', { fg = colors.purple_2 })
    hl('@character', { fg = colors.teal_3 })
    hl('@character.special', { fg = colors.blue_2 })
    hl('@number', { fg = colors.teal_2 })
    hl('@boolan', { fg = colors.violet_2, bold = true })
    hl('@float', { fg = colors.teal_3 })
    hl('@function', { fg = colors.blue_2 })
    hl('@function.builtin', { fg = colors.blue_2 })
    hl('@function.macro', { fg = colors.blue_2, bold = true })
    hl('@attribute', { fg = colors.orange_4 })
    hl('@annotation', { fg = colors.yellow_2 })
    hl('@parameter', { fg = colors.orange_2 })
    hl('@parameter.reference', { fg = colors.orange_2 })
    hl('@method', { fg = colors.blue_2 })
    hl('@field', { fg = colors.teal_2 })
    hl('@property', { fg = colors.teal_2 })
    hl('@constructor', { fg = colors.blue_2 })
    hl('@conditional', { fg = colors.orange_2, bold = true })
    hl('@repeat', { fg = colors.orange_2, bold = true })
    hl('@label', { fg = colors.purple_2 })
    hl('@operator', { fg = colors.purple_2 })
    hl('@keyword', { fg = colors.orange_2, bold = true })
    hl('@keyword.function', { fg = colors.blue_2 })
    hl('@keyword.operator', { fg = colors.purple_2, })
    hl('@exception', { fg = colors.orange_2, bold = true })
    hl('@variable', { fg = colors.light_4 })
    hl('@variable.builtin', { fg = colors.light_4 })
    hl('@variable.parameter', { fg = colors.light_4 })
    hl('@variable.other', { fg = colors.teal_2 })
    hl('@type', { fg = colors.teal_2 })
    hl('@type.builtin', { fg = colors.teal_2 })
    hl('@type.qualifire', { fg = colors.teal_2 })
    hl('@type.definition', { fg = colors.teal_2, bold = true })
    hl('@storageclass', { fg = colors.orange_2, bold = true })
    hl('@structure', { fg = colors.teal_2, bold = true })
    hl('@namespace', { fg = colors.orange_2 })
    hl('@include', { fg = colors.orange_2, bold = true })
    hl('@preproc', { fg = colors.orange_2 })
    hl('@debug', { fg = colors.yellow_2 })
    hl('@tag', { fg = colors.teal_2 })
    hl('@tag.delimiter', { fg = colors.light_4 })
    hl('@tag.attribute', { fg = colors.orange_2 })

    -- LSP semantic tokens
    hl('@lsp.type.class', { link = '@type' })
    hl('@lsp.type.decorator', { link = '@function' })
    hl('@lsp.type.enum', { link = '@structure' })
    hl('@lsp.type.enumMember', { link = '@property' })
    hl('@lsp.type.function', { link = '@function' })
    hl('@lsp.type.interface', { link = '@type' })
    hl('@lsp.type.macro', { link = '@macro' })
    hl('@lsp.type.method', { link = '@function' })
    hl('@lsp.type.namespace', { link = '@namespace' })
    hl('@lsp.type.parameter', { link = '@parameter' })
    hl('@lsp.type.property', { link = '@property' })
    hl('@lsp.type.struct', { link = '@structure' })
    hl('@lsp.type.type', { link = '@type' })
    hl('@lsp.type.typeParameter', { link = '@type' })
    hl('@lsp.type.variable', { link = '@variable' })
    hl('@lsp.type.keyword', { link = '@keyword' })

    -- Typescript fix
    hl('typescriptParens', { fg = colors.light_4, bg = 'NONE' })
    -- A custome thing to make cmp doc border invisible
    hl('CmpNDocBorder', { fg = colors.split_and_borders, bg = colors.libadwaita_dark })

    hl('htmlTag', { fg = colors.teal_2 })
    hl('htmlEndTag', { fg = colors.teal_2 })
    hl('htmlTagName', { fg = colors.teal_2 })
    hl('htmlSpecialTagName', { fg = colors.teal_2 })
    hl('htmlArg', { fg = colors.orange_2 })

    hl('NvimTreeRootFolder', { fg = colors.light_4 })
    hl('NvimTreeFolderIcon', { fg = colors.light_4 })
    hl('NvimTreeFolderName', { fg = colors.light_4, bold = true })
    hl('NvimTreeEmptyFolderName', { fg = colors.light_4, bold = true })
    hl('NvimTreeOpenedFolderName', { fg = colors.light_4, bold = true })
    hl('NvimTreeVertSplit', { fg = colors.libadwaita_dark, bg = colors.libadwaita_dark })
    hl('NvimTreeNormal', { bg = colors.libadwaita_tree })
    hl('NvimTreeEndOfBuffer', { fg = colors.libadwaita_tree, bg = colors.libadwaita_tree })

    hl('BufferLineIndicatorSelected', { bg = colors.libadwaita_dark })
    hl('BufferLineFill', { bg = colors.libadwaita_dark_alt })


    -- Telescope nvim
    hl('TelescopePromptBorder', { fg = colors.split_and_borders })
    hl('TelescopeResultsBorder', { fg = colors.split_and_borders })
    hl('TelescopePreviewBorder', { fg = colors.split_and_borders })
    hl('TelescopeNormal', { fg = colors.light_4 })
    hl('TelescopeSelection', { fg = colors.light_4 })
    hl('TelescopeMultiSelection', { fg = colors.light_4, })
    hl('TelescopeMatching', { fg = colors.light_4, bold = true })
    hl('TelescopePromptPrefix', { fg = colors.light_4, bold = true })

    hl('LspReferenceText', { bg = colors.blue_7 })
    hl('LspReferenceRead', { bg = colors.blue_7 })
    hl('LspReferenceWrite', { bg = colors.blue_7 })
    hl('DiagnosticError', { fg = colors.red_2 })
    hl('DiagnosticWarn', { fg = colors.yellow_6 })
    hl('DiagnosticHint', { fg = colors.blue_4 })
    hl('DiagnosticInfo', { fg = colors.teal_5 })

    hl('CocHighlightText', { bg = colors.blue_7 })
    hl('CocHighlightRead', { bg = colors.blue_7 })
    hl('CocHighlightWrite', { bg = colors.blue_7 })

    hl('CmpItemKind', { fg = colors.light_4 })

    hl('GitSignsAddLn', { fg = colors.green_2, bg = colors.green_6 })
    hl('GitSignsChangeLn', { fg = colors.orange_1, bg = colors.orange_5 })
    hl("GitSignsCurrentLineBlame", { fg = colors.dark_2 })
end


return M
