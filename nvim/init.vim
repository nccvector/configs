set clipboard=unnamedplus
set title

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

lua require('options')
lua require('plugins')
lua require('keymaps')
lua require('whichkey-config')
lua require('telescope-config')
lua require("nvim-tree").setup()
lua require("statusline")
lua require("lsp-config")

" Debugging
lua require('debugging-config')


" Setting transparent background
" :highlight Normal guibg=none
" :highlight NonText guibg=none

" " Deoplete options [Tab completion, disable in Telescope buffers]
" let g:deoplete#enable_at_startup = 1
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" autocmd FileType TelescopePrompt call deoplete#custom#buffer_option('auto_complete', v:false)
