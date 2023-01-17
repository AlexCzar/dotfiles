local set = vim.opt
set.expandtab = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth= 4

set.laststatus = 2
set.list = true
set.listchars = {
tab = '⦔ ',
extends = '❯',
nbsp = '␣',
precedes = '❮',
trail = '·',
}

set.showbreak = '↪ '
set.number = true
set.numberwidth = 3
set.signcolumn = 'yes:1'
set.relativenumber = true

set.splitbelow = true
set.splitright = true

vim.diagnostic.config({
    virtual_text = true,
    underline = true,
})
