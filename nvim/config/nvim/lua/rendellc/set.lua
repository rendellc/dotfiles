vim.cmd("colorscheme rose-pine")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
--
-- Netrw sets
vim.g.netrw_liststyle = 3
-- vim.g.netrw_hide = 1				-- hide by default
-- vim.g.netrw_list_hide = ".*\.meta$"

vim.opt.wildignore = { "*.meta" }
