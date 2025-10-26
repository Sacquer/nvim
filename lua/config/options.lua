-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-----------------------------------------------------------------------------------------
-- To check documentation: --> e.g :help winbar
-----------------------------------------------------------------------------------------

vim.opt.winbar = "%=%m %f"

vim.opt.background = "dark"

vim.opt.completeopt = { "menu", "menuone", "noselect", "popup" }

vim.opt.clipboard = "unnamedplus"

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.splitbelow = true
vim.opt.splitright = true

-- Show which line your cursor is on
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.belloff = "all"

vim.opt.ignorecase = true -- Ignore case in search (case insensitive pattern matching)
vim.opt.smartcase = true -- Overrides ignorecase if pattern contains upcase
vim.opt.showmatch = true -- Show bracket matches

vim.opt.scrolloff = 4

vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "auto"

-- Behavior settings
-- vim.opt.backspace = "indent,eol,start"
-- vim.opt.iskeyword:append("-") -- Treat dash as part of word
-- vim.opt.path:append("**") -- Include subdirectories in search

-- vimwiki
vim.g.vimwiki_list = {
  { path = "~/vimwiki/", syntax = "markdown", ext = ".md" },
  { path = "~/vimwiki/Programming", syntax = "markdown", ext = ".md" },
  { path = "~/vimwiki/Linux", syntax = "markdown", ext = ".md" },
  { path = "~/vimwiki/DevOps", syntax = "markdown", ext = ".md" },
}
vim.g.vimwiki_ext2syntax = { [".md"] = "markdown", [".markdown"] = "markdown", [".mdown"] = "markdown" }
-- Makes vimwiki markdown linkas as [text](text.md) instead of [text](text)
vim.g.vimwiki_markdown_link_ext = 1
