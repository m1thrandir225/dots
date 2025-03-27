-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
--
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.g.lazyvim_php_lsp = "intelephense"
vim.g.lazyvim_blink_main = false
return {
  -- use mini.starter instead of alpha
  { import = "lazyvim.plugins.extras.ui.mini-starter" },
}
