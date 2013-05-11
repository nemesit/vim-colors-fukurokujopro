" Author:	Felix Grabowski	<fukurokujoe@googlemail.com>
" URL:      http://www.myriadvisuals.com/fukurokujoPro
"           (see this url for latest release & screenshots)
" License: 	TODO: something like putting a license file in this document 
" Created:  May 2, 2013  
" Modified: May 2, 2013



" Environment Specific Overrides "{{{
" Terminals that support italics
let s:terms_italic=[
			\"rxvt",
			\"gnome-terminal",
			\"iTerm.app"
			\]
let s:terms_noitalics=[
			\"Apple_Terminal"
			\]
if has("gui_running")
	let s:terminal_italics=1
else
	let s:terminal_italics=0
	for term in s:terms_italic
		if $TERM_PROGRAM =~term
			let s:terminal_italics=1
		endif
	endfor
endif


" }}}
" Colorscheme initialization {{{

hi clear
if exists("syntax_on")
	syntax reset
endif
let colors_name = "fukurokujoPro"
" }}}


let s:gb = {}

let s:gb.dark0  = ['282828', 235]
let s:gb.dark1  = ['3c3836', 237]
let s:gb.dark2  = ['504945', 239]
let s:gb.dark3  = ['665c54', 241]
let s:gb.dark4  = ['7c6f64', 243]

let s:gb.medium = ['928374', 245]

let s:gb.light0 = ['fdf4c1', 247]
let s:gb.light1 = ['ebdbb2', 223]
let s:gb.light2 = ['d5c4a1', 251]
let s:gb.light3 = ['bdae93', 253]
let s:gb.light4 = ['a89984', 255]

let s:gb.red    = ['fb4934', 167]
let s:gb.orange = ['fe8019', 208]
let s:gb.yellow = ['fabd2f', 214]
let s:gb.green  = ['b8bb26', 142]
let s:gb.aqua   = ['8ec07c', 108]
let s:gb.blue   = ['83a598', 109]
let s:gb.purple = ['d3869b', 175]



" Color Palette {{{
let s:vmode		= "cterm"
let s:linComm 	= "14"
let s:linbg		= "236"
let s:string 	= "179"

" }}}
" Formatting options and null values for passthrough effect {{{
	let s:none 		= "NONE"
	let s:t_none	= "NONE"
	let s:n			= "NONE"
	let s:c			= ",undercurl"
	let s:r			= ",reverse"
	let s:s			= ",standout"
	let s:ou		= ""
	let s:ob		= ""
" }}}
let s_back = "NONE"

"14 oder 238 für comments/lineNr
"236 for line bg

"102 grau pink
"108 pink grün mitte das eklige grün ding
"138 helleres rosa
"142 gelbgrünlich mehr orange das übelst hässliche string zeug jetzt 179 gelblich
"174 hell rosa
"187 hell pink blau beinahe normale textfarbe weiß
"196 hell rot 		easymotion rot
"203 rosa			die lets und so
"208 orange
"214 hell orange	the color behind those hi! tags TODO: is ne nervige farbe
"235 dunkel grau    background
"237 dunkler grau	kurz vor kaum sichtbar grau auf dem bg
"243 grau			wie 102 ungefähr gaaanz gering heller
"59 kinda grau bissl dunkler grau als 102
"95 sehr blass rot
" Todo:
"new colors
"179 fast ok für strings
"71 das grün ausm gui gut für Type

"solarized like test
let s:vmode 	= "cterm"
let s:base03 	= "102"





"let g:colors_name = expand("<sfile>:t:r")




hi! Normal term=NONE cterm=NONE ctermbg=235 ctermfg=223 gui=NONE guibg=#282828 guifg=#ebdbb2
hi! htmlTagN term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#ebdbb2
hi! diffLine term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#83a598
hi! htmlLink term=NONE cterm=underline ctermbg=bg ctermfg=138 gui=underline guibg=bg guifg=#a89984
hi! htmlSpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#fe8019
hi! vimCommentTitle term=NONE cterm=bold ctermbg=bg ctermfg=138 gui=bold,italic guibg=bg guifg=#a89984
hi! Identifier term=underline cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#83a598
hi! Statement term=bold cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#fb4934
hi! PreProc term=underline cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! Type term=underline cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#fabd2f
hi! Underlined term=underline cterm=underline ctermbg=bg ctermfg=71 gui=underline guibg=bg guifg=#83a598
hi! Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=#282828
hi! Todo term=NONE cterm=bold ctermbg=235 ctermfg=14 gui=bold guibg=#282828 guifg=#ebdbb2
hi! String term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#b8bb26
hi! Character term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#d3869b
hi! Number term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#d3869b
hi! Exception term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#fb4934
hi! Include term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! htmlScriptTag term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#d3869b
hi! SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#504945
hi! NonText term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#504945
hi! Directory term=bold cterm=bold ctermbg=bg ctermfg=179 gui=bold guibg=bg guifg=#b8bb26
hi! ErrorMsg term=NONE cterm=bold ctermbg=203 ctermfg=235 gui=bold guibg=#fb4934 guifg=#282828
hi! IncSearch term=reverse cterm=NONE ctermbg=214 ctermfg=235 gui=NONE guibg=#fabd2f guifg=#282828
hi! Search term=reverse cterm=NONE ctermbg=214 ctermfg=235 gui=NONE guibg=#fabd2f guifg=#282828
hi! MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#fabd2f
hi! ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#fabd2f

"CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=95 gui=NONE guibg=bg guifg=#7c6f64
"exe "hi! LineNr term=underline cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#7c6f64"
hi! LineNr 	term=underline 	cterm=NONE 	ctermbg=236 	ctermfg=14 	gui=NONE 	guibg=bg 	guifg=#7c6f64
"SAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#7c6f64
exe 




hi! IndentGuidesEven term=NONE cterm=reverse ctermbg=235 ctermfg=59 gui=reverse guibg=#665c54 guifg=#282828
hi! diffAdded term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#b8bb26
hi! Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#fb4934


" Plugin specific -------------------------------------------------------------
" EasyMotion: {{{

"hi! def link EasyMotionTarget Search
"hi! def link EasyMotionShade Comment

hi! EasyMotionTargetDefault term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
hi! EasyMotionShadeDefault term=NONE cterm=NONE ctermbg=bg ctermfg=243 gui=NONE guibg=bg guifg=#777777
" }}}



hi! SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=174 gui=undercurl guibg=bg guifg=fg guisp=#d3869b
hi! SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=71 gui=undercurl guibg=bg guifg=fg guisp=#8ec07c
hi! Pmenu term=NONE cterm=NONE ctermbg=59 ctermfg=223 gui=NONE guibg=#504945 guifg=#ebdbb2
hi! PmenuSel term=NONE cterm=bold ctermbg=71 ctermfg=59 gui=bold guibg=#83a598 guifg=#504945
hi! PmenuSbar term=NONE cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#504945 guifg=fg
hi! PmenuThumb term=NONE cterm=NONE ctermbg=95 ctermfg=fg gui=NONE guibg=#7c6f64 guifg=fg
hi! TabLine term=underline cterm=NONE ctermbg=235 ctermfg=95 gui=NONE guibg=#282828 guifg=#7c6f64
hi! TabLineSel term=bold cterm=bold ctermbg=95 ctermfg=235 gui=bold guibg=#7c6f64 guifg=#282828
hi! TabLineFill term=reverse cterm=NONE ctermbg=236 ctermfg=95 gui=NONE guibg=#282828 guifg=#7c6f64
hi! CursorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#3c3836 guifg=fg
hi! htmlSpecialTagName term=NONE cterm=bold ctermbg=bg ctermfg=71 gui=bold guibg=bg guifg=#8ec07c
hi! Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#d3869b
hi! Float term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#d3869b
hi! Function term=NONE cterm=bold ctermbg=bg ctermfg=179 gui=bold guibg=bg guifg=#b8bb26
hi! Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#fb4934
hi! Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#fb4934
hi! Label term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#fb4934
hi! CursorLineNr term=bold cterm=NONE ctermbg=236 ctermfg=214 gui=NONE guibg=#3c3836 guifg=#fabd2f
hi! Question term=NONE cterm=bold ctermbg=bg ctermfg=208 gui=bold guibg=bg guifg=#fe8019
hi! StatusLine term=bold,reverse cterm=bold ctermbg=95 ctermfg=235 gui=bold guibg=#7c6f64 guifg=#282828
hi! StatusLineNC term=reverse cterm=bold ctermbg=59 ctermfg=138 gui=bold guibg=#504945 guifg=#a89984
hi! VertSplit term=reverse cterm=NONE ctermbg=59 ctermfg=138 gui=NONE guibg=#504945 guifg=#a89984
hi! Title term=bold cterm=bold ctermbg=bg ctermfg=179 gui=bold guibg=bg guifg=#b8bb26
hi! Visual term=reverse cterm=reverse ctermbg=bg ctermfg=59 gui=reverse guibg=#665c54 guifg=fg
hi! VisualNOS term=bold,underline cterm=reverse ctermbg=bg ctermfg=59 gui=reverse guibg=#665c54 guifg=fg
hi! WarningMsg term=NONE cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#fb4934
hi! WildMenu term=NONE cterm=bold ctermbg=59 ctermfg=71 gui=bold guibg=#504945 guifg=#83a598
hi! htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#83a598
hi! diffRemoved term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#fb4934
hi! diffChanged term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! diffFile term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#fe8019
hi! diffNewFile term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#fabd2f
hi! SyntasticErrorLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
hi! htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#83a598
hi! SyntasticWarningLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
hi! htmlTagName term=NONE cterm=bold ctermbg=bg ctermfg=71 gui=bold guibg=bg guifg=#8ec07c
hi! htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! vCursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! iCursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#3c3836 guifg=fg
hi! ColorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#3c3836 guifg=fg
hi! Cursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! lCursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! MatchParen term=reverse cterm=bold ctermbg=59 ctermfg=fg gui=bold guibg=#665c54 guifg=fg
hi! Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff

hi! Comment term=bold cterm=NONE ctermbg=bg ctermfg=14 gui=italic guibg=bg guifg=#928374
"CSAHi Comment term=bold cterm=NONE ctermbg=196 ctermfg=102 gui=italic guibg=bg guifg=#928374

hi! Constant term=underline cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#d3869b
hi! Special term=bold cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#fe8019
hi! IndentGuidesOdd term=NONE cterm=reverse ctermbg=235 ctermfg=59 gui=reverse guibg=#504945 guifg=#282828
hi! Define term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! Macro term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#fe8019
hi! Structure term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#8ec07c
hi! Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#fabd2f
"fg 102 changed to 14  and bg 237 changed to 236
hi! Folded term=NONE cterm=NONE ctermbg=236 ctermfg=14 gui=italic guibg=#3c3836 guifg=#928374
hi! FoldColumn term=NONE cterm=NONE ctermbg=236 ctermfg=14 gui=NONE guibg=#3c3836 guifg=#928374

hi! DiffAdd term=bold cterm=NONE ctermbg=179 ctermfg=235 gui=NONE guibg=#b8bb26 guifg=#282828
hi! DiffChange term=bold cterm=NONE ctermbg=71 ctermfg=235 gui=NONE guibg=#8ec07c guifg=#282828
hi! DiffDelete term=bold cterm=NONE ctermbg=203 ctermfg=235 gui=NONE guibg=#fb4934 guifg=#282828
hi! DiffText term=reverse cterm=NONE ctermbg=214 ctermfg=235 gui=NONE guibg=#fabd2f guifg=#282828
hi! SignColumn term=NONE cterm=NONE ctermbg=235 ctermfg=fg gui=NONE guibg=#282828 guifg=fg
hi! Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#83a598
hi! SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=71 gui=undercurl guibg=bg guifg=fg guisp=#83a598
hi! SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=203 gui=undercurl guibg=bg guifg=fg guisp=#fb4934


