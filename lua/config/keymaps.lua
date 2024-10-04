local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>wt", require("wezterm").switch_tab.index)
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "x", '"_x')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<A-h>", require("smart-splits").resize_left)
keymap.set("n", "<A-j>", require("smart-splits").resize_down)
keymap.set("n", "<A-k>", require("smart-splits").resize_up)
keymap.set("n", "<A-l>", require("smart-splits").resize_right)
-- moving between splits
keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
-- swapping buffers between windows
keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)
