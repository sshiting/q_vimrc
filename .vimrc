" @@qinxij
" CUSTOM configuration {{{
" (1) column config {{{2
set autoindent			        " Preserve current ident on new lines
set textwidth=78		        " Wrap at this column
set backspace=indent,eol,start	" Make backspaces delete sensibly

set tabstop=4                   " Indentation levels every four columns
set expandtab                   " Convert all tabs typed to spaces
set shiftwidth=4                " Indent/outdent by four columns
set shiftround                  " Indent/outdent to nearest tabstop
" 2}}}

" (2) color config {{{2
colorscheme desert
set hlsearch                    " highlight search
set incsearch                   " real time searching

hi StatuslineBufNr     cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#840c0c guifg=#ffffff
hi StatuslineFlag      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#bc5b4c guifg=#ffffff
hi StatuslinePath      cterm=none    ctermfg=white  ctermbg=green   gui=none guibg=#8d6c47 guifg=black
hi StatuslineFileName  cterm=none    ctermfg=white  ctermbg=blue    gui=none guibg=#d59159 guifg=black
hi StatuslineFileEnc   cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#ffff77 guifg=black
hi StatuslineFileType  cterm=bold    ctermbg=white  ctermfg=black   gui=none guibg=#acff84 guifg=black
hi StatuslineTermEnc   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#77cf77 guifg=black
hi StatuslineChar      cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#66b06f guifg=black
hi StatuslineSyn       cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#60af9f guifg=black
hi StatuslineRealSyn   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#5881b7 guifg=black
hi StatusLine          cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#3f4d77 guifg=#729eb0
hi StatuslineTime      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#3a406e guifg=#000000
hi StatuslineSomething cterm=reverse ctermfg=white  ctermbg=darkred gui=none guibg=#c0c0f0 guifg=black
hi StatusLineNC                                                     gui=none guibg=#304050 guifg=#70a0a0
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

" switch CursorColumn and CursorLine by \c, which has already by mapped
" Here is a mapping method: 
" :hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" :hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" ---->>  :nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" 2}}}

" (3) matching config {{{2
set matchpairs+=<:>             " Allow % to bounce between angles too
" 2}}}

" (4) status config {{{2
set nu                          " show line numbers
map <Leader>lc :set cursorcolumn! cursorline!<CR>

" switch match highlight by \l
:nnoremap <Leader>ls :set hlsearch!<CR>
"
" 2}}}

" (5) operation config {{{2
set foldmethod=marker
"<F2> for reloading the vimrc
map <F2> :source $MYVIMRC<CR>:echoe "Vimrc Reloaded!!!"<CR> 
" virtualedit switch
nmap <A-C-V> :set virtualedit=all<CR>:echo "virtualedit on!"<CR>
nmap <A-S-V> :set virtualedit=<CR>:echo "virtualedit off!"<CR>

" copy current buffer(Window) to a new Tab: <Leader>wt
nmap <Leader>wt :tabnew \| br<CR>

" switch "tabwidth"(tabtop shiftwidth)  2<<-->>4
nmap <Leader>2 :set tabstop=2 shiftwidth=2<CR>
nmap <Leader>4 :set tabstop=4 shiftwidth=4<CR>

" open Nerdtree window
nmap <Leader>n :NERDTree<CR>
" 2}}}

" (6) 移除菜单栏、工具栏和滚动条 {{{2
set guioptions-=m
set guioptions-=T
" set guioptions-=r
set guioptions-=b
" 2}}}

" (7) filetype check on {{{2
filetype on
filetype plugin on
filetype indent on
" 2}}}
" END Custom configuration }}}


" @@qinxij 
" START configuration for indent_guides.vim {{{
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#666666   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#444444 ctermbg=4
" END indent_guides.vim }}}


" @@qinxij 
" START configuration for matchit.vim {{{
source ~/.vim/plugin/matchit.vim
filetype plugin on
" END imatchit.vim }}}


" @@qinxij
" START FuzzyFinder 配置"{{{
"
"let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400

" Fuf mapping {{{2
" nnoremap <silent> sj     :FufBuffer<CR>
" nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
" nnoremap <silent> sK     :FufFileWithFullCwd<CR>
" nnoremap <silent> s<C-k> :FufFile<CR>
" nnoremap <silent> sl     :FufCoverageFileChange<CR>
" nnoremap <silent> sL     :FufCoverageFileChange<CR>
" nnoremap <silent> sc     :FufCoverageFile<CR>
" nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
" nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
" nnoremap <silent> sD     :FufDirWithFullCwd<CR>
" nnoremap <silent> s<C-d> :FufDir<CR>
" nnoremap <silent> sn     :FufMruFile<CR>
" nnoremap <silent> sN     :FufMruFileInCwd<CR>
" nnoremap <silent> sm     :FufMruCmd<CR>
" nnoremap <silent> su     :FufBookmarkFile<CR>
" nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
" vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
" nnoremap <silent> si     :FufBookmarkDir<CR>
" nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
" nnoremap <silent> st     :FufTag<CR>
" nnoremap <silent> sT     :FufTag!<CR>
" nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
" nnoremap <silent> s,     :FufBufferTag<CR>
" nnoremap <silent> s<     :FufBufferTag!<CR>
" vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
" vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
" nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
" nnoremap <silent> s.     :FufBufferTagAll<CR>
" nnoremap <silent> s>     :FufBufferTagAll!<CR>
" vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
" vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
" nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
" nnoremap <silent> sg     :FufTaggedFile<CR>
" nnoremap <silent> sG     :FufTaggedFile!<CR>
" nnoremap <silent> so     :FufJumpList<CR>
" nnoremap <silent> sp     :FufChangeList<CR>
" nnoremap <silent> sq     :FufQuickfix<CR>
" nnoremap <silent> sy     :FufLine<CR>
" nnoremap <silent> sh     :FufHelp<CR>
" nnoremap <silent> se     :FufEditDataFile<CR>
" nnoremap <silent> sr     :FufRenewCache<CR>
" 2}}}
"
" F4和shift+F4调用FuzzyFinder命令行菜单""{{{2
"
function! GetAllCommands()
  redir => commands
  silent command
  redir END
  return map((split(commands, "\n")[3:]),
      \      '":" . matchstr(v:val, ''^....\zs\S*'')')
endfunction

" 自定义命令行
let g:fuf_com_list=[':exe "FufBuffer                       " |" sj     ',
                   \':exe "FufFileWithCurrentBufferDir     " |" sk     ',
                   \':exe "FufFileWithFullCwd              " |" sK     ',
                   \':exe "FufFile                         " |" s<C-k> ',
                   \':exe "FufCoverageFileChange           " |" sl     ',
                   \':exe "FufCoverageFileChange           " |" sL     ',
                   \':exe "FufCoverageFile                 " |" sc     ',
                   \':exe "FufCoverageFileRegister         " |" s<C-l> ',
                   \':exe "FufDirWithCurrentBufferDir      " |" sd     ',
                   \':exe "FufDirWithFullCwd               " |" sD     ',
                   \':exe "FufDir                          " |" s<C-d> ',
                   \':exe "FufMruFile                      " |" sn     ',
                   \':exe "FufMruFileInCwd                 " |" sN     ',
                   \':exe "FufMruCmd                       " |" sm     ',
                   \':exe "FufBookmarkFile                 " |" su     ',
                   \':exe "FufBookmarkFileAdd              " |" s<C-u> ',
                   \':exe "FufBookmarkFileAddAsSelectedText" |" s<C-u> ',
                   \':exe "FufBookmarkDir                  " |" si     ',
                   \':exe "FufBookmarkDirAdd               " |" s<C-i> ',
                   \':exe "FufTag                          " |" st     ',
                   \':exe "FufTag!                         " |" sT     ',
                   \':exe "FufTagWithCursorWord!           " |" s<C-]> ',
                   \':exe "FufBufferTag                    " |" s,     ',
                   \':exe "FufBufferTag!                   " |" s<     ',
                   \':exe "FufBufferTagWithSelectedText!   " |" s,     ',
                   \':exe "FufBufferTagWithSelectedText    " |" s<     ',
                   \':exe "FufBufferTagWithCursorWord!     " |" s}     ',
                   \':exe "FufBufferTagAll                 " |" s.     ',
                   \':exe "FufBufferTagAll!                " |" s>     ',
                   \':exe "FufBufferTagAllWithSelectedText!" |" s.     ',
                   \':exe "FufBufferTagAllWithSelectedText " |" s>     ',
                   \':exe "FufBufferTagAllWithCursorWord!  " |" s]     ',
                   \':exe "FufTaggedFile                   " |" sg     ',
                   \':exe "FufTaggedFile!                  " |" sG     ',
                   \':exe "FufJumpList                     " |" so     ',
                   \':exe "FufChangeList                   " |" sp     ',
                   \':exe "FufQuickfix                     " |" sq     ',
                   \':exe "FufLine                         " |" sy     ',
                   \':exe "FufHelp                         " |" sh     ',
                   \':exe "FufEditDataFile                 " |" se     ',
                   \':exe "FufRenewCache                   " |" sr     ',
                   \':exe "FufDir ~/"                        |" 更换目录从家目录jml',
                   \':exe "FufFile ~/"                       |" 打开文件从家目录jml',
                   \]


nnoremap <silent> <S-F4> :call fuf#givencmd#launch('', 0, '选择命令>', GetAllCommands())<CR>
nnoremap <silent> <F4> :call fuf#givencmd#launch('', 0, '选择命令>', g:fuf_com_list)<CR>
"2}}}
" END Fuzzyfinder  }}}


" @@qinxij
" START configuration for git-vim.vim {{{
set laststatus=2
set statusline=%{GitBranch()}
" END configuration for git-vim.vim }}}

" @@qinxij
" START configuration for Align.vim {{{

" For some reason(unknown) the command '\afnc' of my Align don't work,
" I fix it by mapping \afun :
map \afun :Align , ) \/\* \*\/<CR>gv:s/,/;/<CR>gv\adec<CR>gv:s/)/;)/<CR>gv\adec<CR>gv:s!;!,!<CR>gv:s!,\(\s*)\)!)!<CR>gv\acom

" END configuration for Align.vim }}}

" @@qinxij
" START configuration for omnicpp {{{
set nocp                        " 确保你已关闭了vi兼容模式， 
filetype plugin on              " 并允许进行文件类型检测： 
" Usage -------------------------------------------------: 
" 接下来，使用下面的命令，为C++文件生成标签文件，
" 假定你的文件在src目录树下：
"      ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -I src 
"        --c++-kinds=+p  : 为C++文件增加函数原型的标签
"        --fields=+iaS   : 在标签文件中加入继承信息(i)、类成员的访问控制信息(a)、以及函数的指纹(S)
"        --extra=+q      : 为标签增加类修饰符。注意，如果没有此选项，将不能对类成员补全 
"        -I              : if contains macros in the project
" end Usage ----------------------------------------------
" Mapping ------------------------------------------------
" 如果下拉菜单弹出，回车映射为接受当前所选项目，否则，仍映射为回车；
" 如果下拉菜单弹出，CTRL-J映射为在下拉菜单中向下翻页。否则映射为CTRL-X CTRL-O；
" 如果下拉菜单弹出，CTRL-K映射为在下拉菜单中向上翻页，否则仍映射为CTRL-K；
" 如果下拉菜单弹出，CTRL-U映射为CTRL-E，即停止补全，否则，仍映射为CTRL-U；

inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
" inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
" inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>" 
" <C-F12> to reCtags current directroy -R (Recursion)
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" end Mapping --------------------------------------------
" use stl/tags
set tags+=~/.vim/stl/tags
set tags+=~/.vim/qt_include/tags
" OmniCppComplete value setting
let OmniCpp_NamespaceSearch = 1 
let OmniCpp_GlobalScopeSearch = 1 
let OmniCpp_ShowAccess = 1 
let OmniCpp_MayCompleteDot = 1 
let OmniCpp_MayCompleteArrow = 1 
let OmniCpp_MayCompleteScope = 1 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"] 

" automatically open and close the popup menu / preview window 
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest,preview

" END configuration for omnicpp }}}

" @@qinxij
" START configuration for surpertab.vim[ is confilct with snipmate.vim ] {{{
""let g:SuperTabRetainCompletionType = 2 
""let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 
" END configuration for surpertab.vim }}}

" @@qinxij
" START configuration for snipmate.vim(snippet){{{


" END configuration for snipmate.vim(snippet) }}}


" @@qinxij
" START tab navigation like firefox {{{
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
" END Alt+N to switch tab page }}}


" @@qinxij
" (perl) configuration for PERL/perl {{{
" Inserting these abbreviations inserts the corresponding Perl statement...
iab phbp  #! /usr/bin/perl -w
iab pdbg  use Data::Dumper 'Dumper';warn Dumper [];hi
iab pbmk  use Benchmark qw( cmpthese );cmpthese -10, {};O
iab pusc  use Smart::Comments;###
iab putm  use Test::More qw( no_plan );

iab papp  :r ~/.code_templates/perl_application.pl
iab pmod  :r ~/.code_templates/perl_module.pm

" END (perl) configuration  }}}

" If WARNING this, append this code to ~/.bashrc.
" # @@qinxij
" # BEGIN configuration for gvim warning: {{{
" #** (gvim:20320): WARNING **: Unable to create Ubuntu Menu Proxy: Timeout was reached 
" function gvim () { (/usr/bin/gvim -f "$@" &) }
" alias gvim='UBUNTU_MENUPROXY= gvim'
" # END configuration for gvim warning }}}
"
"

