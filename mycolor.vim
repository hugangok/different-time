set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "mycolor"

"======================================================================================================================="
 hi        Cursor         guifg=grey20           guibg=#00FFD7           gui=NONE        "光标所在的字符
 hi        CursorColumn                          guibg=grey20           gui=NONE        "光标所在的屏幕列
 hi        CursorLine                            guibg=#666666          gui=NONE        "光标所在的屏幕行
 hi        Directory      guifg=#FF3F3F          guibg=grey20           gui=NONE        "目录名
 hi        DiffAdd                               guibg=#7F7F00           gui=NONE        "diff: 增加的行
 hi        DiffChange                            guibg=#7F007F           gui=NONE        "diff: 改变的行
 hi        DiffDelete                            guibg=#007F7F           gui=NONE        "diff: 删除的行
 hi        DiffText       guifg=#007F00          guibg=grey20           gui=NONE        "diff: 改变行里的改动文本
 hi        ErrorMsg       guifg=#FF3F3F          guibg=grey20           gui=NONE        "命令行上的错误信息
 hi        VertSplit      guifg=#FF3F3F          guibg=#3F3FFF           gui=NONE        "分离垂直分割窗口的列
 hi        Folded         guifg=#7FFF00          guibg=#7F7F00           gui=NONE        "用于关闭的折叠的行
 hi        IncSearch      guifg=redguibg=plum            gui=NONE        "'incsearch' 高亮
 hi        LineNr         guifg=#FFFF00          guibg=grey20           gui=NONE        "置位 number 选项时的行号
 hi        MatchParen     guifg=#FF7F3F          guibg=grey20           gui=NONE        "配对的括号
 hi        MatchParen     guifg=#FFFF00          guibg=#FF0000           gui=NONE        "配对的括号
 hi        ModeMsg        guifg=#FF7F00          guibg=grey20           gui=NONE        "showmode 消息(INSERT)
 hi        MoreMsg        guifg=#BFBF3F          guibg=grey20           gui=NONE        "|more-prompt|
 hi        NonText        guifg=#007FFF          guibg=grey20           gui=NONE        "窗口尾部的'~'和 '@'
 hi        Normal         guifg=#BFBFBF          guibg=grey20           gui=NONE        "正常内容
 hi        Pmenu          guifg=#FFFFFF          guibg=#3F3FFF           gui=NONE        "弹出菜单普通项目
 hi        PmenuSel       guifg=#FFFF00          guibg=#FF3F3F           gui=NONE        "弹出菜单选中项目
 hi        PmenuSbar      guifg=#3F3FFF          guibg=grey20           gui=NONE        "弹出菜单滚动条。
 hi        PmenuThumb     guifg=grey20           guibg=#3FFF3F           gui=NONE        "弹出菜单滚动条的拇指
 hi        Question       guifg=#7F7F7F          guibg=grey20           gui=NONE        "提示和 yes/no 问题
 hi        Search         guifg=#FFFF66          guibg=#6887FF           gui=NONE        "最近搜索模式的高亮
 hi        SpecialKey     guifg=#FF7F00          guibg=grey20           gui=NONE        "特殊键，字符和'listchars'
 hi        SpellBad       guifg=#FF0000          guibg=grey20           gui=NONE        "拼写检查器不能识别的单词
 hi        SpellCap       guifg=#BF0000          guibg=grey20           gui=NONE        "应该大写字母开头的单词
 hi        SpellLocal     guifg=#FF00FF          guibg=grey20           gui=NONE        "只在其它区域使用的单词
 hi        SpellRare      guifg=#FF7FFF          guibg=grey20           gui=NONE        "很少使用的单词
 hi        StatusLine     guifg=thistle          guibg=dimgraygui=NONE        "当前窗口的状态行
 hi        StatusLineNC   guifg=#FFFFFF          guibg=#3F3F3F           gui=NONE        "非当前窗口的状态行
 hi        TabLine        guifg=grey20           guibg=#BFBFBF           gui=NONE        "非活动标签页标签
 hi        TabLineFill    guifg=grey20           guibg=#FFFFFF           gui=NONE        "没有标签的地方
 hi        TabLineSel     guifg=#FFFF00          guibg=#0000FF           gui=NONE        "活动标签页标签
 hi        Title          guifg=#007FBF          guibg=grey20           gui=NONE        ":set all 等输出的标题
 hi        Visual         guifg=darkslategrayguibg=lightblue  gui=NONE        "可视模式的选择区
 hi        WarningMsg     guifg=#FF003F          guibg=grey20           gui=NONE        "警告消息
 hi        WildMenu       guifg=#FF7F00          guibg=#0000FF           gui=NONE        "wildmenu补全的当前匹配
 "======================================================================================================================="
 "GUI group-name
 "======================================================================================================================="
 hi        Comment        guifg=skyblue          guibg=grey20           gui=NONE        "任何注释
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Constant       guifg=#BF007F          guibg=grey20           gui=NONE        "任何常数
 hi        String         guifg=#FF7F7F          guibg=grey20           gui=NONE        "一个字符串常数: "字符串"
 hi        Character      guifg=#FF3F3F          guibg=grey20           gui=NONE        "一个字符常数: 'c'、'\n'
 hi        Number         guifg=#FF7F3F          guibg=grey20           gui=NONE        "一个数字常数: 234、0xff
 hi        Float          guifg=#FF7F3F          guibg=grey20           gui=NONE        "一个浮点常数: 2.3e10
 hi        Boolean        guifg=#FF0000          guibg=grey20           gui=NONE        "一个布尔型常数: TRUE、false
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Identifier     guifg=#007FBF          guibg=grey20           gui=NONE        "任何变量名
 hi        Function       guifg=#00BFBF          guibg=grey20           gui=NONE        "函数名 (也包括: 类的方法名)
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Statement      guifg=#FFFF7F          guibg=grey20           gui=NONE        "任何语句
 hi        Conditional    guifg=#FFFF00          guibg=grey20           gui=NONE        "if、then、else、endif、switch
 hi        Repeat         guifg=#FFBF00          guibg=grey20           gui=NONE        "for、do、while 等
 hi        Label          guifg=#FF7F00          guibg=grey20           gui=NONE        "case、default 等
 hi        Operator       guifg=#BFFF00          guibg=grey20           gui=NONE        ""sizeof"、"+"、"*" 等
 hi        Keyword        guifg=#BFBF00          guibg=grey20           gui=NONE        "任何其它关键字
 hi        Exception      guifg=#BF7F00          guibg=grey20           gui=NONE        "try、catch、throw
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        PreProc        guifg=#FF63FF          guibg=grey20           gui=NONE        "通用预处理命令
 hi        Include        guifg=#FF00FF          guibg=grey20           gui=NONE        "预处理命令 #include
 hi        Define         guifg=#BF3FBF          guibg=grey20           gui=NONE        "预处理命令 #define
 hi        Macro          guifg=#7F00BF          guibg=grey20           gui=NONE        "等同于 Define
 hi        PreCondit      guifg=#FF007F          guibg=grey20           gui=NONE        "预处理命令 #if、#else、#endif
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Type           guifg=limegreen        guibg=grey20           gui=NONE        "int、long、char 等
 hi        StorageClass   guifg=#7FFF00          guibg=grey20           gui=NONE        "static、register、volatile 等
 hi        Structure      guifg=#00FF7F          guibg=grey20           gui=NONE        "struct、union、enum 等
 hi        Typedef        guifg=#3FFF3F          guibg=grey20           gui=NONE        "一个 typedef
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Special        guifg=#BFBF3F          guibg=grey20           gui=NONE        "任何特殊符号
 hi        SpecialChar    guifg=#FFBF3F          guibg=grey20           gui=NONE        "常数中的特殊字符
 hi        Tag            guifg=#BFFF3F          guibg=grey20           gui=NONE        "这里可以使用 CTRL-]
 hi        Delimiter      guifg=#FF3F00          guibg=grey20           gui=NONE        "需要注意的字符
 hi        SpecialComment guifg=#FF00BF          guibg=grey20           gui=NONE        "注释里的特殊字符
 hi        Debug          guifg=#BF00FF          guibg=grey20           gui=NONE        "调试语句
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Underlined     guifg=#3F3FFF          guibg=grey20           gui=UNDERLINE   "需要突出的文本，HTML 链接
 hi        Ignore         guifg=#7F7F7F          guibg=grey20           gui=NONE        "留空，被隐藏
 hi        Error          guifg=#FFFF00          guibg=#FF0000           gui=NONE        "任何有错的构造
 hi        Todo           guifg=#FFFFFF          guibg=#0000FF           gui=NONE        "任何需要特殊注意的部分
 "======================================================================================================================="
 else
 "Console
 "======================================================================================================================="
 hi        Cursor         ctermfg=black            ctermbg=lightgreen        cterm=BOLD        "光标所在的字符
 hi        CursorColumn                            ctermbg=black             cterm=BOLD        "光标所在的屏幕列
 hi        CursorLine                              ctermbg=black             cterm=BOLD        "光标所在的屏幕行
 hi        Directory      ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "目录名
 hi        DiffAdd                                 ctermbg=lightgreen        cterm=BOLD        "diff: 增加的行
 hi        DiffChange                              ctermbg=lightcyan         cterm=BOLD        "diff: 改变的行
 hi        DiffDelete                              ctermbg=lightcyan         cterm=BOLD        "diff: 删除的行
 hi        DiffText       ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "diff: 改变行里的改动文本
 hi        ErrorMsg       ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "命令行上的错误信息
 hi        VertSplit      ctermfg=lightmagenta     ctermbg=lightblue         cterm=BOLD        "分离垂直分割窗口的列
 hi        Folded         ctermfg=lightgrey        ctermbg=lightgreen        cterm=BOLD        "用于关闭的折叠的行
 hi        IncSearch      ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "'incsearch' 高亮
 hi        LineNr         ctermfg=yellow           ctermbg=black             cterm=BOLD        "置位 number 选项时的行号
 hi        MatchParen     ctermfg=lightred         ctermbg=black             cterm=BOLD        "配对的括号
 hi        MatchParen     ctermfg=yellow           ctermbg=lightred          cterm=BOLD        "配对的括号
 hi        ModeMsg        ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "showmode 消息(INSERT)
 hi        MoreMsg        ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "|more-prompt|
 hi        NonText        ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "窗口尾部的'~'和 '@'
 hi        Normal         ctermfg=lightgrey        ctermbg=black             cterm=BOLD        "正常内容
 hi        Pmenu          ctermfg=lightgrey        ctermbg=lightblue         cterm=BOLD        "弹出菜单普通项目
 hi        PmenuSel       ctermfg=yellow           ctermbg=lightmagenta      cterm=BOLD        "弹出菜单选中项目
 hi        PmenuSbar      ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "弹出菜单滚动条。
 hi        PmenuThumb     ctermfg=black            ctermbg=lightgreen        cterm=BOLD        "弹出菜单滚动条的拇指
 hi        Question       ctermfg=yellow           ctermbg=black             cterm=BOLD        "提示和 yes/no 问题
 hi        Search         ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "最近搜索模式的高亮
 hi        SpecialKey     ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "特殊键，字符和'listchars'
 hi        SpellBad       ctermfg=lightred         ctermbg=black             cterm=BOLD        "拼写检查器不能识别的单词
 hi        SpellCap       ctermfg=lightred         ctermbg=black             cterm=BOLD        "应该大写字母开头的单词
 hi        SpellLocal     ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "只在其它区域使用的单词
 hi        SpellRare      ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "很少使用的单词
 hi        StatusLine     ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "当前窗口的状态行
 hi        StatusLineNC   ctermfg=yellow           ctermbg=black             cterm=BOLD        "非当前窗口的状态行
 hi        TabLine        ctermfg=black            ctermbg=black             cterm=BOLD        "非活动标签页标签
 hi        TabLineFill    ctermfg=black            ctermbg=lightgrey         cterm=BOLD        "没有标签的地方
 hi        TabLineSel     ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "活动标签页标签
 hi        Title          ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        ":set all 等输出的标题
 hi        Visual         ctermfg=yellow           ctermbg=lightblue         cterm=BOLD        "可视模式的选择区
 hi        WarningMsg     ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "警告消息
 hi        WildMenu       ctermfg=lightgreen       ctermbg=lightblue         cterm=BOLD        "wildmenu补全的当前匹配
 "======================================================================================================================="
 "Console group-name
 "======================================================================================================================="
 hi        Comment        ctermfg=yellow           ctermbg=black             cterm=BOLD        "任何注释
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Constant       ctermfg=brown            ctermbg=black             cterm=BOLD        "任何常数
 hi        String         ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "一个字符串常数: "字符串"
 hi        Character      ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "一个字符常数: 'c'、'\n'
 hi        Number         ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "一个数字常数: 234、0xff
 hi        Float          ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "一个浮点常数: 2.3e10
 hi        Boolean        ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "一个布尔型常数: TRUE、false
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Identifier     ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "任何变量名
 hi        Function       ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "函数名 (也包括: 类的方法名)
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Statement      ctermfg=yellow           ctermbg=black             cterm=BOLD        "任何语句
 hi        Conditional    ctermfg=yellow           ctermbg=black             cterm=BOLD        "if、then、else、endif、switch
 hi        Repeat         ctermfg=yellow           ctermbg=black             cterm=BOLD        "for、do、while 等
 hi        Label          ctermfg=yellow           ctermbg=black             cterm=BOLD        "case、default 等
 hi        Operator       ctermfg=yellow           ctermbg=black             cterm=BOLD        ""sizeof"、"+"、"*" 等
 hi        Keyword        ctermfg=yellow           ctermbg=black             cterm=BOLD        "任何其它关键字
 hi        Exception      ctermfg=lightred         ctermbg=black             cterm=BOLD        "try、catch、throw
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        PreProc        ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "通用预处理命令
 hi        Include        ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "预处理命令 #include
 hi        Define         ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "预处理命令 #define
 hi        Macro          ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "等同于 Define
 hi        PreCondit      ctermfg=lightred         ctermbg=black             cterm=BOLD        "预处理命令 #if、#else、#endif
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Type           ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "int、long、char 等
 hi        StorageClass   ctermfg=lightmagenta     ctermbg=black             cterm=BOLD        "static、register、volatile 等
 hi        Structure      ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "struct、union、enum 等
 hi        Typedef        ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "一个 typedef
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Special        ctermfg=brown            ctermbg=black             cterm=BOLD        "任何特殊符号
 hi        SpecialChar    ctermfg=brown            ctermbg=black             cterm=BOLD        "常数中的特殊字符
 hi        Tag            ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "这里可以使用 CTRL-]
 hi        Delimiter      ctermfg=lightgreen       ctermbg=black             cterm=BOLD        "需要注意的字符
 hi        SpecialComment ctermfg=lightred         ctermbg=black             cterm=BOLD        "注释里的特殊字符
 hi        Debug          ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "调试语句
 "-----------------------------------------------------------------------------------------------------------------------"
 hi        Underlined     ctermfg=lightcyan        ctermbg=black             cterm=BOLD        "需要突出的文本，HTML 链接
 hi        Ignore         ctermfg=darkgrey         ctermbg=black             cterm=NONE        "留空，被隐藏
 hi        Error          ctermfg=yellow           ctermbg=lightred          cterm=BOLD        "任何有错的构造
 hi        Todo           ctermfg=lightgrey        ctermbg=lightblue         cterm=BOLD        "任何需要特殊注意的部分
 "======================================================================================================================="
 endif
Red     LightRed        DarkRed 

Green   LightGreen      DarkGreen       SeaGreen 

Blue    LightBlue       DarkBlue        SlateBlue 

Cyan    LightCyan       DarkCyan 

Magenta LightMagenta    DarkMagenta 

Yellow  LightYellow     Brown           DarkYellow 

Gray    LightGray       DarkGray 

Black   White 

Orange  Purple          Violet
