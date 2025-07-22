local opt=vim.opt

-- 行号
opt.relativenumber=true
opt.number=true
opt.list = true

-- 缩进
opt.tabstop=2
opt.shiftwidth=2
opt.expandtab=true
opt.autoindent=true

-- 防止包裹
opt.wrap=false

-- 光标
opt.cursorline=true

-- 启动鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口
opt.splitright=true
opt.splitbelow=true

-- 搜索
opt.ignorecase=true
opt.smartcase=true

-- 外观
opt.termguicolors=true
-- 左侧多一列,debug和插件提示
opt.signcolumn="yes"
-- 主题
vim.cmd[[colorscheme tokyonight-storm]]
-- 状态栏
require('lualine').setup({
  options = {
    theme = 'tokyonight'
  }
})
-- nvimtree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
