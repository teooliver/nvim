-- local status_ok, telescope = pcall(require, "minimap")
-- if not status_ok then
--   return
-- end

-- require('minimap')

-- hi MinimapCurrentLine ctermfg=Blue guifg=#5fbbf4  guibg=#32302f
-- let g:minimap_width = 4
-- let g:minimap_auto_start = 1
-- let g:minimap_auto_start_win_enter = 1
-- let g:minimap_highlight_range = 1
-- let g:minimap_highlight = 'MinimapCurrentLine'

vim.cmd ([[
  hi MinimapCurrentLine ctermfg=Blue guifg=#5fbbf4 guibg=#32302f
]])

vim.g.minimap_width = 4
vim.g.minimap_auto_start = 1
vim.g.minimap_auto_start_win_enter = 1
vim.g.minimap_highlight_range = 1
vim.g.minimap_highlight = "MinimapCurrentLine"

