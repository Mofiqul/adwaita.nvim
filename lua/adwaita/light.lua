
local highlight = require'adwaita.utils'.highlight
local link_other_highlights = require'adwaita.utils'.link_other_highlights

local colors = {
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

local M = {}

local set_terminal_color = function()
    vim.g.terminal_color_0          = colors.light_2
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
    vim.g.terminal_color_12         = colors.purple_1
    vim.g.terminal_color_13         = colors.blue_1
    vim.g.terminal_color_14         = colors.teal_1
    vim.g.terminal_color_15         = colors.light_3
    vim.g.terminal_color_background = colors.light_2
    vim.g.terminal_color_foreground = colors.dark_3
end
M.set = function ()
    set_terminal_color()
    highlight('Normal',                        colors.dark_3,   colors.light_2, 'none',      'none' )
    highlight('ColorColumn',                   'none',          colors.dark_1,  'none',      'none' )
    highlight('Cursor',                        colors.light_5,  colors.dark_1,  'none',      'none' )
    highlight('CursorLine',                    'none',          colors.light_3, 'none',      'none' )
    highlight('CursorColumn',                  'none',          colors.light_3, 'none',      'none' )
    highlight('Directory',                     colors.dark_4,   colors.light_2, 'bold',      'none' )
    highlight('DiffAdd',                       colors.teal_3,   colors.light_2, 'none',      'none' )
    highlight('DiffChange',                    colors.orange_3, colors.light_2, 'none',      'none' )
    highlight('DiffDelete',                    colors.red_1,    colors.light_2, 'none',      'none' )
    highlight('DiffText',                      colors.violet_4, colors.light_2, 'none',      'none' )
    highlight('EndOfBuffer',                   colors.light_2,  colors.light_2, 'none',      'none' )
    highlight('ErrorMsg',                      colors.red_3,    colors.light_2, 'underline', 'none' )
    highlight('VertSplit',                     colors.light_4,  colors.light_2, 'none',      'none' )
    highlight('Folded',                        colors.dark_1,   colors.light_2, 'none',      'none' )
    highlight('FoldedColumn',                  colors.dark_1,   colors.light_2, 'none',      'none' )
    highlight('SignColumn',                    colors.dark_2,   colors.light_2, 'none',      'none' )
    highlight('IncSearch',                     colors.dark_4,   '#FCF7B5',      'none',      'none' )
    highlight('LineNr',                        colors.light_6,  colors.light_2, 'none',      'none' )
    highlight('CursorLineNr',                  colors.light_7,  colors.light_3, 'none',      'none' )
    highlight('MatchParen',                    colors.dark_3,   colors.light_2, 'bold',      'none' )
    highlight('ModeMsg',                       colors.dark_3,   colors.light_3, 'none',      'none' )
    highlight('MoreMsg',                       colors.dark_3,   colors.light_3, 'none',      'none' )
    highlight('NonText',                       colors.light_3,  colors.light_2, 'none',      'none' )
    highlight('Pmenu',                         colors.dark_3,   colors.light_3, 'none',      'none' )
    highlight('PmenuSel',                      colors.light_2,  colors.blue_5,  'none',      'none' )
    highlight('PmenuSbar',                     'none',          colors.dark_1,  'none',      'none' )
    highlight('PmenuThumb',                    'none',          colors.light_5, 'none',      'none' )
    highlight('Question',                      colors.blue_1,   colors.light_2, 'none',      'none' )
    highlight('Search',                        colors.dark_4,   '#FCF7B5',      'none',      'none' )
    highlight('SpecialKey',                    colors.dark_2,   colors.light_2, 'none',      'none' )
    highlight('StatusLine',                    colors.dark_3,   colors.light_3, 'none',      'none' )
    highlight('StatusLineNC',                  colors.dark_3,   colors.light_3, 'none',      'none' )
    highlight('Tabline',                       colors.dark_3,   colors.light_3, 'none',      'none' )
    highlight('TablineFill',                   colors.dark_3,   colors.light_3, 'none',      'none' )
    highlight('TablineSel',                    colors.dark_3,   colors.light_2, 'none',      'none' )
    highlight('Title',                         'none',          'none',         'bold',      'none' )
    highlight('Visual',                        'none',          colors.blue_1,  'none',      'none' )
    highlight('VisualNOS',                     'none',          colors.blue_1,  'none',      'none' )
    highlight('WarningMsg',                    colors.yellow_4, 'none',         'bold',      'none' )
    highlight('WildMenu',                      colors.dark_3,   colors.blue_5,  'none',      'none' )
    highlight('Comment',                       colors.dark_1,   'none',         'none',      'none' )
    highlight('Constant',                      colors.violet_4, 'none',         'none',      'none' )
    highlight('String',                        colors.teal_5,   'none',         'none',      'none' )
    highlight('Character',                     colors.teal_5,   'none',         'none',      'none' )
    highlight('Number',                        colors.violet_4, 'none',         'none',      'none' )
    highlight('Boolean',                       colors.violet_4, 'none',         'none',      'none' )
    highlight('Float',                         colors.violet_4, 'none',         'none',      'none' )
    highlight('Identifier',                    colors.orange_5, 'none',         'none',      'none' )
    highlight('Function',                      colors.blue_4,   'none',         'none',      'none' )
    highlight('Statement',                     colors.purple_2, 'none',         'none',      'none' )
    highlight('Conditional',                   colors.orange_5, 'none',         'bold',      'none' )
    highlight('Repeat',                        colors.purple_1, 'none',         'none',      'none' )
    highlight('Label',                         colors.purple_2, 'none',         'none',      'none' )
    highlight('Operator',                      colors.dark_3,   'none',         'none',      'none' )
    highlight('Keyword',                       colors.orange_5, 'none',         'bold',      'none' )
    highlight('Exception',                     colors.orange_4, 'none',         'none',      'none' )
    highlight('PreProc',                       colors.violet_4, 'none',         'none',      'none' )
    highlight('Include',                       colors.orange_5, 'none',         'bold',      'none' )
    highlight('Define',                        colors.yellow_6, 'none',         'none',      'none' )
    highlight('Macro',                         colors.yellow_6, 'none',         'none',      'none' )
    highlight('Type',                          colors.teal_5,   'none',         'bold',      'none' )
    highlight('StorageClass',                  colors.teal_5,   'none',         'bold',      'none' )
    highlight('Typedef',                       colors.teal_5,   'none',         'bold',      'none' )
    highlight('Structure',                     colors.teal_5,   'none',         'none',      'none' )
    highlight('Special',                       colors.red_2,    'none',         'none',      'none' )
    highlight('SpecialChar',                   colors.red_2,    'none',         'none',      'none' )
    highlight('Tag',                           colors.teal_5,   'none',         'none',      'none' )
    highlight('Delimiter',                     colors.dark_3,   'none',         'none',      'none' )
    highlight('SpecialComment',                colors.dark_1,   'none',         'none',      'none' )
    highlight('Debug',                         colors.dark_3,   'none',         'none',      'none' )
    highlight('Underline',                     colors.dark_3,   'none',         'none',      'none' )
    highlight('Conceal',                       colors.dark_3,   'none',         'none',      'none' )
    highlight('Ignore',                        colors.dark_3,   'none',         'none',      'none' )
    highlight('Error',                         colors.red_1,    'none',         'undercurl', 'none' )
    highlight('Todo',                          colors.dark_3,   'none',         'none',      'none' )
    highlight('SpellBad',                      colors.red_3,    'none',         'undercurl', 'none' )
    highlight('SpellCap',                      colors.red_3,    'none',         'undercurl', 'none' )
    highlight('SpellRare',                     colors.red_3,    'none',         'undercurl', 'none' )
    highlight('SpellLocal',                    colors.red_3,    'none',         'undercurl', 'none' )
    highlight('Whitespace',                    colors.light_3,  'none',         'none',      'none' )


    highlight('TSError',                       colors.red_1,    'none',         'undercurl', 'none' )
    highlight('TSTSPunctBracket',              colors.dark_3,   'none',         'none',      'none' )
    highlight('TSPunctSpecial',                colors.red_3,    'none',         'none',      'none' )
    highlight('markdownTSPunctSpecial',        colors.teal_5,   'none',         'bold',      'none' )
    highlight('TSConstant',                    colors.violet_4, 'none',         'none',      'none' )
    highlight('TSConstBuiltin',                colors.violet_4, 'none',         'none',      'none' )
    highlight('TSConstMacro',                  colors.teal_3,   'none',         'none',      'none' )
    highlight('TSStringRegex',                 colors.teal_5,   'none',         'none',      'none' )
    highlight('TSString',                      colors.teal_5,   'none',         'none',      'none' )
    highlight('TSCharacter',                   colors.teal_5,   'none',         'none',      'none' )
    highlight('TSNumber',                      colors.violet_4, 'none',         'none',      'none' )
    highlight('TSBoolean',                     colors.violet_4, 'none',         'none',      'none' )
    highlight('TSFloat',                       colors.violet_4, 'none',         'none',      'none' )
    highlight('TSAnnotation',                  colors.yellow_4, 'none',         'none',      'none' )
    highlight('TSAttribute',                   colors.orange_4, 'none',         'none',      'none' )
    highlight('TSNamespace',                   colors.orange_5, 'none',         'none',      'none' )
    highlight('TSFuncBuiltin',                 colors.blue_4,   'none',         'none',      'none' )
    highlight('TSFuncMacro',                   colors.blue_4,   'none',         'none',      'none' )
    highlight('TSFunction',                    colors.blue_4,   'none',         'none',      'none' )
    highlight('TSParameter',                   colors.dark_3,   'none',         'none',      'none' )
    highlight('TSParameterReference',          colors.dark_3,   'none',         'none',      'none' )
    highlight('TSMethod',                      colors.blue_4,   'none',         'none',      'none' )
    highlight('TSField',                       colors.dark_3,   'none',         'none',      'none' )
    highlight('TSProperty',                    colors.dark_3,   'none',         'none',      'none' )
    highlight('TSConstructor',                 colors.blue_4,   'none',         'none',      'none' )
    highlight('TSConditional',                 colors.orange_5, 'none',         'bold',      'none' )
    highlight('TSRepeat',                      colors.purple_1, 'none',         'none',      'none' )
    highlight('TSLabel',                       colors.purple_2, 'none',         'none',      'none' )
    highlight('TSOperator',                    colors.dark_3,   'none',         'none',      'none' )
    highlight('TSKeyword',                     colors.orange_5, 'none',         'bold',      'none' )
    highlight('TSKeywordFunction',             colors.orange_5, 'none',         'bold',      'none' )
    highlight('TSKeywordOperator',             colors.dark_3,   'none',         'bold',      'none' )
    highlight('TSException',                   colors.orange_4, 'none',         'none',      'none' )
    highlight('TSType',                        colors.teal_5,   'none',         'bold',      'none' )
    highlight('TSTypeBuiltin',                 colors.teal_5,   'none',         'bold',      'none' )
    highlight('TSStructure',                   colors.teal_5,   'none',         'bold',      'none' )
    highlight('TSInclude',                     colors.orange_5, 'none',         'bold',      'none' )
    highlight('TSVariable',                    colors.dark_3,   'none',         'none',      'none' )
    highlight('TSVariableBuiltin',             colors.dark_3,   'none',         'none',      'none' )
    highlight('TSText',                        colors.teal_5,   'none',         'none',      'none' )
    highlight('TSUnderline',                   colors.dark_3,   'none',         'none',      'none' )
    highlight('TSTag',                         colors.teal_5,   'none',         'none',      'none' )
    highlight('TSTagDelimiter',                colors.teal_5,   'none',         'none',      'none' )
    highlight('TSTitle',                       colors.teal_5,   'none',         'bold',      'none' )
    highlight('TSLiteral',                     'none',          'none',         'none',      'none' )
    highlight('TSEmphasis',                    'none',          'none',         'italic',    'none' )
    highlight('TSStrong',                      'none',          'none',         'bold',      'none' )
    highlight('TSURI',                         colors.blue_4,   'none',         'italic',    'none' )
    highlight('TSTextReference',               colors.red_3,    'none',         'none',      'none' )
    highlight('TSPunctDelimiter',              'none',          'none',         'none',      'none' )
    highlight('TSStringEscape',                colors.teal_5,   'none',         'none',      'none' )
    highlight('TSNote',                        colors.blue_4,   'none',         'none',      'none' )
    highlight('TSWarning',                     colors.yellow_2, 'none',         'none',      'none' )
    highlight('TSError',                       colors.red_3,    'none',         'none',      'none' )


    highlight('htmlTag',                       colors.teal_5,   'none',         'none',      'none' )
    highlight('htmlEndTag',                    colors.teal_5,   'none',         'none',      'none' )
    highlight('htmlTagName',                   colors.teal_5,   'none',         'none',      'none' )
    highlight('htmlSpecialTagName',            colors.teal_5,   'none',         'none',      'none' )
    highlight('htmlArg',                       colors.orange_5, 'none',         'none',      'none' )

    highlight('NvimTreeRootFolder',            colors.dark_3,   'none',         'none',      'none' )
    highlight('NvimTreeFolderIcon',            colors.blue_3,   'none',         'none',      'none' )
    highlight('NvimTreeFolderName',            colors.dark_4,   'none',         'bold',      'none' )
    highlight('NvimTreeEmptyFolderName',       colors.dark_4,   'none',         'bold',      'none' )

    highlight('LspFloatWinNormal',             colors.dark_3,   'none',         'none',      'none' )
    highlight('LspFloatWinBorder',             colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaHoverBorder',            colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaSignatureHelpBorder',    colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaCodeActionBorder',       colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaDefPreviewBorder',       colors.light_4,  'none',         'none',      'none' )
    highlight('LspLinesDiagBorder',            colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaRenameBorder',           colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaBorderTitle',            colors.light_4,  'none',         'none',      'none' )
    highlight('LSPSagaDiagnosticTruncateLine', colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaDiagnosticBorder',       colors.light_4,  'none',         'none',      'none' )
    highlight('LspSagaShTruncateLine',         colors.light_6,  'none',         'none',      'none' )
    highlight('LspSagaDocTruncateLine',        colors.light_6,  'none',         'none',      'none' )
    highlight('LspSagaLspFinderBorder',        colors.light_4,  'none',         'none',      'none' )

    highlight('TelescopePromptBorder',         colors.light_4,  'none',         'none',      'none' )
    highlight('TelescopeResultsBorder',        colors.light_4,  'none',         'none',      'none' )
    highlight('TelescopePreviewBorder',        colors.light_4,  'none',         'none',      'none' )
    highlight('TelescopeNormal',               colors.dark_3,   'none',         'none',      'none' )
    highlight('TelescopeSelection',            colors.light_2,  colors.blue_5,  'none',      'none' )
    highlight('TelescopeMultiSelection',       colors.light_2,  colors.blue_5,  'none',      'none' )
    highlight('TelescopeMatching',             colors.teal_5,   'none',         'bold',      'none' )
    highlight('TelescopePromptPrefix',         colors.dark_3,   'none',         'bold',      'none' )

    highlight('CompeDocumentation',            colors.dark_3,   colors.light_3, 'bold',      'none' )
    highlight('CompeDocumentationBorder',      colors.light_4,  colors.light_3, 'bold',      'none' )

	highlight('LspReferenceText',              'none',          colors.blue_1,  'none',      'none' )
	highlight('LspReferenceRead',              'none',          colors.blue_1,  'none',      'none' )
	highlight('LspReferenceWrite',             'none',          colors.blue_1,  'none',      'none' )
	highlight('CocHighlightText',              'none',          colors.blue_1,  'none',      'none' )
	highlight('CocHighlightRead',              'none',          colors.blue_1,  'none',      'none' )
	highlight('CocHighlightWrite',             'none',          colors.blue_1,  'none',      'none' )

    link_other_highlights()
end

return M
