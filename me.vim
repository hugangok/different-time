set noundofile
set nobackup
color try
set nu
set go=
syntax on
set incsearch 
"自动保存
set autowrite
set formatoptions=tcrqn ""自动格式化？
"搜索模式忽略大小写
set ignorecase
" 设置当文件被改动时自动载入  
set autoread  
let &termencoding=&encoding 
set fileencodings=utf-8,gbk
set visualbell t_vb=  "关闭visual bell
au GuiEnter * set t_vb= "关闭beep 
au GUIEnter * simalt ~x
  "自动补全  
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {<CR>}<ESC>O
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else  
        return a:char  
    endif  
endfunction  

"html自动补全
function! InsertHtmlTag()
        let pat = '\c<\w\+\s*\(\s\+\w\+\s*=\s*[''#$;,()."a-z0-9]\+\)*\s*>'
        normal! a>
        let save_cursor = getpos('.')
        let result = matchstr(getline(save_cursor[1]), pat)
        "if (search(pat, 'b', save_cursor[1]) && searchpair('<','','>','bn',0,  getline('.')) > 0)
        if (search(pat, 'b', save_cursor[1]))
           normal! lyiwf>
           normal! a</
           normal! p
           normal! a>
        endif
        :call cursor(save_cursor[1], save_cursor[2], save_cursor[3])
endfunction
inoremap > <ESC>:call InsertHtmlTag()<CR>a
"分割线----映射
imap jj <ESC>
cmap jj <ESC>
