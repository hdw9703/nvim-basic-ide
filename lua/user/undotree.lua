vim.cmd([[
  let g:undotree_SetFocusWhenToggle = 1
]])


vim.cmd([[
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
]])
