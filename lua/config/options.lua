-- Appearance
vim.opt.termguicolors = true
vim.o.pumheight = 10
vim.o.cmdheight = 1

vim.g.loaded_matchparen = true

-- Files and Others
vim.o.fileencoding = "utf-8" -- File Encoding
vim.g.loaded_netrw = 1       -- Helps opening links in the internet (probabilly -_-)
vim.g.loaded_netrwPlugin = 1
vim.opt.autochdir = true
vim.cmd("filetype plugin indent on")
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.hidden = true
vim.o.whichwrap = "b,s,<,>,[,],h,l"
vim.opt.iskeyword:append("-,_")

-- Split Windows
vim.o.splitbelow = true
vim.o.splitright = true

-- Update and backups
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 500
vim.o.timeoutlen = 500

-- clipboard
vim.o.clipboard = "unnamedplus"

-- Backspace key
vim.o.backspace = "indent,eol,start"

-- Search
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.magic = true

-- Mouse and Scrolling
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
vim.o.mouse = "a"

-- Wrapping
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.o.cursorcolumn = false
vim.wo.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- Tabs and indentations
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.showtabline = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.smartindent = true
vim.bo.smartindent = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true

vim.opt.list = true
--vim.opt.listchars:append("eol:󱞣")
vim.opt.fillchars = { eob = " " }

-- Auto Formatting
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

-- keep cursor unchanged after quiting
vim.api.nvim_create_autocmd("ExitPre", {
  group = vim.api.nvim_create_augroup("Exit", { clear = true }),
  command = "set guicursor=a:ver90",
  desc = "Set cursor back to beam when leaving Neovim.",
})
