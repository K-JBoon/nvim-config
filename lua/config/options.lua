-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Text Editing
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

-- Editor Behaviour
opt.autowrite = false
opt.autoread = true
opt.backupcopy = "yes"
opt.autochdir = false

vim.g.autoformat = false
