-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function opts(description)
  assert(description, "A description must be passed to opts()")

  local o = {
    noremap = true,
    silent = true,
    desc = description, -- or "No description provided",
  }

  return o
end

-- local opts = { noremap = true, silent = true }

-- Source the current file
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>", opts("Source the current file"))

-- Run the Lua code on the same line as your cursor
vim.keymap.set("n", "<space>x", ":.lua<CR>", opts("Run the Lua code on the same line as your cursor"))

-- Run the Lua code that has been visually selected
vim.keymap.set("v", "<space>x", ":lua<CR>", opts("Run the Lua code that has been visually selected"))

vim.keymap.set("i", "jk", "<ESC>", opts("Exit into normal mode"))
vim.keymap.set("n", "<leader>h", ":noh<cr>", opts("Stop highlighting"))

-- Move line with "J" for up, and "K" for down - in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts("Move line up - in visual mode"))
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts("Move line down - in visual mode"))

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts("Keep cursor centered after <C-d>"))
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts("Keep cursor centered after <C-u>"))

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", opts("Center screen when jumping to next search result")) -- Next search result (centered)
vim.keymap.set("n", "N", "Nzzzv", opts("Center screen when jumping to previous search result")) -- Previous search result (centered)

-- Y to EOL
vim.keymap.set("n", "Y", "y$", opts("Yank to end of the line")) -- Yank to end of line

-- Go to beginning / end-of line
vim.keymap.set("n", "gh", "^", { desc = "Go to the beginning of the line" })
vim.keymap.set("n", "gl", "$", { desc = "go to the end of the line" })

-- After going to the end of the line, come back 1 character
vim.keymap.set("v", "gl", "$h", { desc = "Go to the end of the line in visual mode" })
vim.keymap.set("v", "gh", "^", { desc = "Go to the beginning of the line in visual mode" })
-- vim.keymap.set("v", "gl", "$", { desc = "Go to the end of the line in visual mode" })

-- Quick list
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

-----------------------------------------------------------------------------------------
-- Terminal
-----------------------------------------------------------------------------------------
-- We could also use: "<leader>fT" | "<leader>ft" | "<c-/>" | "<c-_>"
-- Source: https://www.lazyvim.org/configuration/general#keymaps
-- local job_id = 0
vim.keymap.set("n", "<space>stt", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J") -- Puts it all the way at the bottom
  vim.api.nvim_win_set_height(0, 15)

  -- job_id = vim.bo.channel
end)

-- vim.keymap.set("t", "jk", "<C-\\><C-n>", opts)

-- Copy full file-path
vim.keymap.set("n", "<leader>pa", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("file:", path)
end, opts("Copy full file-path"))

-- Navigate buffers
vim.keymap.set("n", "<Right>", ":bnext<CR>", opts("Navigate to next buffer"))
vim.keymap.set("n", "<Left>", ":bprevious<CR>", opts("Navigate to previous buffer"))

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", opts("Indent left and re-select")) -- Indent left and reselect
vim.keymap.set("v", ">", ">gv", opts("Indent right and re-select")) -- Indent left and reselect

-- Quick file navigation
-- vim.keymap.set("n", "<leader>e", ":Explorer<CR>", opts)
-- vim.keymap.set("n", "<leader>ff", ":find", opts)

-- Quick config editing
-- vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/init.lua<CR>", opts)

-- vim.keymap.set("n", "<C-s>", ":Telescope current_buffer_fuzzy_find<CR>", opts)

-- Use alt + h,j,k,l to resize windows
-- vim.keymap.set("n", "<M-j>", ":resize -2<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-k>", ":resize +2<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-h>", ":vertical resize -2<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-l>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- vim.keymap.set("n", "<space>example", function()
--   -- make?
--   -- go build?, go test?
--   vim.fn.chansend(job_id, { "ls -al\r\n" })
-- end)

-----------------------------------------------------------------------------------------
-- Kubectl
-----------------------------------------------------------------------------------------

-- vim.keymap.set("n", "<leader>k", '<cmd>lua require("kubectl").toggle({ tab: boolean })<cr>', opts)

-----------------------------------------------------------------------------------------
-- VimWiki
-----------------------------------------------------------------------------------------

vim.keymap.set("n", "<leader>ww", ":VimwikiIndex<CR>", { noremap = true, silent = true })
