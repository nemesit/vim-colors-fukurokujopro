" Description:	A  
" Author:	 	Felix Grabowski	<nemesit@myriadvisuals.com>
" URL:       	http://www.myriadvisuals.com/fukurokujopro
"            	(see this url for latest release & screenshots)
" License: 	 	See bottom of file
" Created:  	May 2, 2013  
" Modified:  	May 2, 2013
"
" Copyright: Copyright (c) 2013 Felix Grabowski. All rights reserved.
" _____     _               _         _     _____ _____ _____
"|   __|_ _| |_ _ _ ___ ___| |_ _ _  |_|___|  _  | __  |     |
"|   __| | | '_| | |  _| . | '_| | | | | . |   __|    -|  |  |
"|__|  |___|_,_|___|_| |___|_,_|___|_| |___|__|  |__|__|_____|
"                                  |___|

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
let colors_name = "FukurokujoPro"
" }}}





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

"14 or 238 for comments/lineNr
"236 for line bg

"102 gray pink
"138 pale pink
"179 yellowish
"174 bright pink
"196 bright red 		easymotion red
"203 pink			die lets und so
"208 orange
"214 bright orange	the color behind those hi! tags TODO: is ne nervige farbe
"235 dark gray    background
"237 darker gray	kurz vor kaum sichtbar grau auf dem bg
"243 gray			wie 102 ungefähr gaaanz gering heller
"59 kinda gray a little darker than 102
"95 really pale red
" Todo:
"new colors
"179 almost ok for strings
"71 ok green 

"solarized like test
let s:vmode 	= "cterm"
let s:base03 	= "102"



"color 14 probably not 00ffff

"let g:colors_name = expand("<sfile>:t:r")




hi! Normal term=NONE cterm=NONE ctermbg=235 ctermfg=223 gui=NONE guibg=#262626 guifg=#ffdfaf
hi! htmlTagN term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#ffdfaf
hi! diffLine term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! htmlLink term=NONE cterm=underline ctermbg=bg ctermfg=138 gui=underline guibg=bg guifg=#af8787
hi! htmlSpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff8700
hi! vimCommentTitle term=NONE cterm=bold ctermbg=bg ctermfg=138 gui=bold,italic guibg=bg guifg=#af8787
hi! Identifier term=underline cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! Statement term=bold cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5f5f
hi! PreProc term=underline cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! Type term=underline cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ffaf00
hi! Underlined term=underline cterm=underline ctermbg=bg ctermfg=71 gui=underline guibg=bg guifg=#5faf5f
hi! Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=#262626
hi! Todo term=NONE cterm=bold ctermbg=235 ctermfg=14 gui=bold guibg=#262626 guifg=#00ffff
hi! String term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#dfaf5f
hi! Character term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#df8787
hi! Number term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#df8787
hi! Exception term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5f5f
hi! Include term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! htmlScriptTag term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#df8787
hi! SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#5f5f5f
hi! NonText term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#5f5f5f
hi! Directory term=bold cterm=bold ctermbg=bg ctermfg=179 gui=bold guibg=bg guifg=#dfaf5f
hi! ErrorMsg term=NONE cterm=bold ctermbg=203 ctermfg=235 gui=bold guibg=#ff5f5f guifg=#262626
hi! IncSearch term=reverse cterm=NONE ctermbg=214 ctermfg=235 gui=NONE guibg=#ffaf00 guifg=#262626
hi! Search term=reverse cterm=NONE ctermbg=214 ctermfg=235 gui=NONE guibg=#ffaf00 guifg=#262626
hi! MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#ffaf00
hi! ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=214 gui=bold guibg=bg guifg=#ffaf00

hi! LineNr 	term=underline 	cterm=NONE 	ctermbg=236 	ctermfg=14 	gui=NONE 	guibg=#303030 	guifg=#00ffff
exe 




hi! IndentGuidesEven term=NONE cterm=reverse ctermbg=235 ctermfg=59 gui=reverse guibg=#665c54 guifg=#262626
hi! diffAdded term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#dfaf5f
hi! Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5f5f


" Plugin specific -------------------------------------------------------------
" EasyMotion: {{{

"hi! def link EasyMotionTarget Search
"hi! def link EasyMotionShade Comment

hi! EasyMotionTargetDefault term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
hi! EasyMotionShadeDefault term=NONE cterm=NONE ctermbg=bg ctermfg=243 gui=NONE guibg=bg guifg=#767676
" }}}



hi! SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=174 gui=undercurl guibg=bg guifg=fg guisp=#df8787
hi! SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=71 gui=undercurl guibg=bg guifg=fg guisp=#5faf5f
hi! Pmenu term=NONE cterm=NONE ctermbg=59 ctermfg=223 gui=NONE guibg=#5f5f5f guifg=#ffdfaf
hi! PmenuSel term=NONE cterm=bold ctermbg=71 ctermfg=59 gui=bold guibg=#5faf5f guifg=#5f5f5f
hi! PmenuSbar term=NONE cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#5f5f5f guifg=fg
hi! PmenuThumb term=NONE cterm=NONE ctermbg=95 ctermfg=fg gui=NONE guibg=#875f5f guifg=fg
hi! TabLine term=underline cterm=NONE ctermbg=235 ctermfg=95 gui=NONE guibg=#262626 guifg=#875f5f
hi! TabLineSel term=bold cterm=bold ctermbg=95 ctermfg=235 gui=bold guibg=#875f5f guifg=#262626
hi! TabLineFill term=reverse cterm=NONE ctermbg=236 ctermfg=95 gui=NONE guibg=#303030 guifg=#875f5f
hi! CursorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#303030 guifg=fg
hi! htmlSpecialTagName term=NONE cterm=bold ctermbg=bg ctermfg=71 gui=bold guibg=bg guifg=#5faf5f
hi! Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#df8787
hi! Float term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#df8787
hi! Function term=NONE cterm=bold ctermbg=bg ctermfg=179 gui=bold guibg=bg guifg=#dfaf5f
hi! Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5f5f
hi! Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5f5f
hi! Label term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5f5f
hi! CursorLineNr term=bold cterm=NONE ctermbg=236 ctermfg=214 gui=NONE guibg=#303030 guifg=#ffaf00
hi! Question term=NONE cterm=bold ctermbg=bg ctermfg=208 gui=bold guibg=bg guifg=#ff8700
hi! StatusLine term=bold,reverse cterm=bold ctermbg=95 ctermfg=235 gui=bold guibg=#875f5f guifg=#262626
hi! StatusLineNC term=reverse cterm=bold ctermbg=59 ctermfg=138 gui=bold guibg=#5f5f5f guifg=#af8787
hi! VertSplit term=reverse cterm=NONE ctermbg=59 ctermfg=138 gui=NONE guibg=#5f5f5f guifg=#af8787
hi! Title term=bold cterm=bold ctermbg=bg ctermfg=179 gui=bold guibg=bg guifg=#dfaf5f
hi! Visual term=reverse cterm=reverse ctermbg=bg ctermfg=59 gui=reverse guibg=#665c54 guifg=fg
hi! VisualNOS term=bold,underline cterm=reverse ctermbg=bg ctermfg=59 gui=reverse guibg=#665c54 guifg=fg
hi! WarningMsg term=NONE cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#ff5f5f
hi! WildMenu term=NONE cterm=bold ctermbg=59 ctermfg=71 gui=bold guibg=#5f5f5f guifg=#5faf5f
hi! htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! diffRemoved term=NONE cterm=NONE ctermbg=bg ctermfg=203 gui=NONE guibg=bg guifg=#ff5f5f
hi! diffChanged term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! diffFile term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff8700
hi! diffNewFile term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ffaf00
hi! SyntasticErrorLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
hi! htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! SyntasticWarningLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
hi! htmlTagName term=NONE cterm=bold ctermbg=bg ctermfg=71 gui=bold guibg=bg guifg=#5faf5f
hi! htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! vCursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! iCursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#303030 guifg=fg
hi! ColorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#303030 guifg=fg
hi! Cursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! lCursor term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
hi! MatchParen term=reverse cterm=bold ctermbg=59 ctermfg=fg gui=bold guibg=#665c54 guifg=fg
hi! Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff

hi! Comment term=bold cterm=NONE ctermbg=bg ctermfg=14 gui=italic guibg=bg guifg=#00ffff
"CSAHi Comment term=bold cterm=NONE ctermbg=196 ctermfg=102 gui=italic guibg=bg guifg=#928374

hi! Constant term=underline cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#df8787
hi! Special term=bold cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff8700
hi! IndentGuidesOdd term=NONE cterm=reverse ctermbg=235 ctermfg=59 gui=reverse guibg=#5f5f5f guifg=#262626
hi! Define term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! Macro term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff8700
hi! Structure term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ffaf00

hi! Folded term=NONE cterm=NONE ctermbg=236 ctermfg=14 gui=italic guibg=#303030 guifg=#00ffff
hi! FoldColumn term=NONE cterm=NONE ctermbg=236 ctermfg=14 gui=NONE guibg=#303030 guifg=#00ffff

hi! DiffAdd term=bold cterm=NONE ctermbg=179 ctermfg=235 gui=NONE guibg=#dfaf5f guifg=#262626
hi! DiffChange term=bold cterm=NONE ctermbg=71 ctermfg=235 gui=NONE guibg=#5faf5f guifg=#262626
hi! DiffDelete term=bold cterm=NONE ctermbg=203 ctermfg=235 gui=NONE guibg=#ff5f5f guifg=#262626
hi! DiffText term=reverse cterm=NONE ctermbg=214 ctermfg=235 gui=NONE guibg=#ffaf00 guifg=#262626
hi! SignColumn term=NONE cterm=NONE ctermbg=235 ctermfg=fg gui=NONE guibg=#262626 guifg=fg
hi! Conceal term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#5faf5f
hi! SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=71 gui=undercurl guibg=bg guifg=fg guisp=#5faf5f
hi! SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=203 gui=undercurl guibg=bg guifg=fg guisp=#ff5f5f


"The MIT License (MIT)
"Copyright © 2013 Felix Grabowski <admin@myriadvisuals.com>

"Permission is hereby granted, free of charge, to any person obtaining a copy
"of this software and associated documentation files (the “Software”), to deal
"in the Software without restriction, including without limitation the rights
"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"copies of the Software, and to permit persons to whom the Software is
"furnished to do so, subject to the following conditions:

"The above copyright notice and this permission notice shall be included in
"all copies or substantial portions of the Software.

"THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
"THE SOFTWARE.

