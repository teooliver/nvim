local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)


-- -- Nvim-Tree
-- local tree ={}
-- tree.open = function ()
--    require'bufferline.state'.set_offset(31, 'FileTree')
--    require'nvim-tree'.find_file(true)
-- end

-- tree.close = function ()
--    require'bufferline.state'.set_offset(0)
--    require'nvim-tree'.close()
-- end

-- return tree 


-- keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>e", ":lua require'user.nvim-tree'.toggle_tree()<CR>", opts)
-- nnoremap <C-n> :NvimTreeToggle<CR>
-- nnoremap <leader>r :NvimTreeRefresh<CR>
-- nnoremap <leader>n :NvimTreeFindFile<CR>

-- Custom ======


keymap("n", "<C-w>", ":BufferClose<CR>", opts)

-- " Disable Ex Mode
-- nnoremap Q  <nop>
keymap("n", "<Q>", "<Nop>", opts)
-- " Disable q (recording)
-- nnoremap q  <nop>
keymap("n", "<q>", "<Nop>", opts)

-- " Better Copy/Cut/Paste
-- nnoremap x "_x
-- nnoremap X "_x
-- nnoremap <Del> "_x
-- nnoremap d "_d
-- nnoremap D "_d
-- vnoremap d "_d          
-- vnoremap D "_d

-- " Alternate way to save
keymap("n", "<C-s>", ":w<CR>", opts) -- On a Mac remap Iterm keys to Send Hex Codes: 0x13 when using Command + s


-- iTerm Hex Key Code Remaping Notes:
-- u  => 0x75 (undo)
-- ^r => 0x12 (redo)


-- " Alternate way to quit
-- nnoremap <C-Q> :wq!<CR>

keymap("n", "<leader>j", ":terminal<CR>", opts) 

-- " Move lines up and down
-- vnoremap <C-j> :m '>+1<CR>gv=gv
-- vnoremap <C-Down> :m '>+1<CR>gv=gv
-- vnoremap <C-k> :m '<-2<CR>gv=gv               
-- vnoremap <C-Up> :m '<-2<CR>gv=gv               
-- nnoremap <C-j> :m .+1<CR>==
-- nnoremap <C-Down> :m .+1<CR>==
-- nnoremap <C-k> :m .-2<CR>==
-- nnoremap <C-Up> :m .-2<CR>==
-- inoremap <C-j> <Esc>:m .+1<CR>==gi
-- inoremap <C-Down> <Esc>:m .+1<CR>==gi
-- inoremap <C-k> <Esc>:m .-2<CR>==gi
-- inoremap <C-Up> <Esc>:m .-2<CR>==gi

-- " start and end of line 
-- nnoremap <leader>h ^
-- nnoremap <leader>l $

-- " Add quotes around visual selection
-- vnoremap " <esc>`>a"<esc>`<i"<esc>
