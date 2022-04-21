local M = {}

M.highlight = function(grp, fg, bg, attr, sp)
    vim.api.nvim_command('highlight ' .. grp .. ' guifg=' .. fg .. ' guibg=' .. bg .. ' gui=' .. attr .. ' guisp=' .. sp)
end

M.link_other_highlights = function()
    -- Nvim compe
    vim.api.nvim_command('highlight link CompeDocumentation Pmenu')
    vim.api.nvim_command('highlight link CompeDocumentationBorder Pmenu')
    vim.api.nvim_command('highlight link CmpItemKind Pmenu')
    vim.api.nvim_command('highlight link CmpItemKindClass CmpItemKindConstructor')
    vim.api.nvim_command('highlight link CmpItemKindModule CmpItemKindKeyword')
    vim.api.nvim_command('highlight link CmpItemKindOperator TSOperator')
    vim.api.nvim_command('highlight link CmpItemKindReference TSParameterReference')
    vim.api.nvim_command('highlight link CmpItemKindValue TSField')
    vim.api.nvim_command('highlight link CmpItemKindField TSField')
    vim.api.nvim_command('highlight link CmpItemKindEnum TSField')
    vim.api.nvim_command('highlight link CmpItemKindSnippet TSText')
    vim.api.nvim_command('highlight link CmpItemKindColor cssColor')
    vim.api.nvim_command('highlight link CmpItemKindFile TSURI')
    vim.api.nvim_command('highlight link CmpItemKindFolder TSURI')
    vim.api.nvim_command('highlight link CmpItemKindEvent TSConstant')
    vim.api.nvim_command('highlight link CmpItemKindEnumMember TSField')
    vim.api.nvim_command('highlight link CmpItemKindConstant TSConstant')
    vim.api.nvim_command('highlight link CmpItemKindStruct TSStructure')
    vim.api.nvim_command('highlight link CmpItemKindTypeParameter TSParameter')
end

return M
