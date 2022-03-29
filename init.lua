--       _   __      _
--      / | / /   __(_)___ ___
--     /  |/ / | / / / __ `__ \
--    / /|  /| |/ / / / / / / /
--   /_/ |_/ |___/_/_/ /_/ /_/

if (vim.g.vscode) then
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.comment"
else
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.treesitter"
require "user.nvim-tree"
require "user.bufferline"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.toggleterm"
require "user.lualine"
require "user.indentline"

end
-- require "user.barbar"
-- require "user.minimap"
-- vim.cmd "colorschem darkplus"

-- vim.cmd ([[
--   hi MinimapCurrentLine ctermfg=Blue guifg=#5fbbf4  guibg=#32302f
-- ]])


-- autocmd BufWrite * :Autoformat
