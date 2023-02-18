-- 设置undotree打开聚焦点在undotree面板
vim.cmd([[
  let g:undotree_SetFocusWhenToggle = 1
]])

-- 光标定位到上次打开文件的位置
-- vim.cmd([[
-- if has("autocmd")
--   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
-- endif
-- ]])


-- 设置背景透明
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )

