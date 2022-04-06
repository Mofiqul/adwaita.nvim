local M = {}

M.highlight = function (grp, fg, bg, attr, sp)
    vim.api.nvim_command('highlight ' .. grp .. ' guifg=' .. fg .. ' guibg=' .. bg .. ' gui=' .. attr .. ' guisp=' .. sp)
end

return M
