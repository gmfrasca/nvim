--require('settings')
require('plugins')
require('setups')

vim.cmd [[nnoremap , :qa<CR> ]]
vim.cmd [[autocmd VimEnter * Neotree ]]
vim.cmd([[colorscheme monokai-pro]])
