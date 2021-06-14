" Vim color file
" Maintainer:	James Pruitt

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "term"

let bg=system('xgetres vim.background')
let fg=system('xgetres vim.foreground')
let cursor=system('xgetres vim.cursorColor')

let color0=system('xgetres vim.color0 | tr -d \\n')
let color1=system('xgetres vim.color1 | tr -d \\n')
let color2=system('xgetres vim.color2 | tr -d \\n')
let color3=system('xgetres vim.color3 | tr -d \\n')
let color4=system('xgetres vim.color4 | tr -d \\n')
let color5=system('xgetres vim.color5 | tr -d \\n')
let color6=system('xgetres vim.color6 | tr -d \\n')
let color7=system('xgetres vim.color7 | tr -d \\n')

let color8=system('xgetres vim.color8 | tr -d \\n')
let color9=system('xgetres vim.color9 | tr -d \\n')
let color10=system('xgetres vim.color10 | tr -d \\n')
let color11=system('xgetres vim.color11 | tr -d \\n')
let color12=system('xgetres vim.color12 | tr -d \\n')
let color13=system('xgetres vim.color13 | tr -d \\n')
let color14=system('xgetres vim.color14 | tr -d \\n')
let color15=system('xgetres vim.color15 | tr -d \\n')

exe "hi Comment  ctermfg=4 guifg=".color4
exe "hi PreProc  ctermfg=5 guifg=".color5
exe "hi Constant ctermfg=3 guifg=".color3
exe "hi Type     ctermfg=2 guifg=".color2
exe "hi Special  ctermfg=5 guifg=".color5
exe "hi Statement ctermfg=1 guifg=".color1
exe "hi Identifier ctermfg=6 guifg=".color6
exe "hi Todo ctermfg=0 ctermbg=11 guifg=".color0." guibg=".color11

"Vim UI
exe "hi Directory ctermfg=5 guifg=".color5
exe "hi Search ctermfg=0 ctermbg=11 guifg=".color0." guibg=".color11
hi! link WildMenu Search
hi! link NonText Comment

exe "hi Pmenu ctermbg=0 ctermfg=8 guibg=".color0." guifg=".color8
exe "hi PmenuSel ctermbg=8 ctermbg=0 guibg=".color8." guifg=".color0

exe "hi VertSplit ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=".color7

hi! link StatusLine VertSplit
exe "hi StatusLineNC ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=".color8

" Sign Column
hi SignColumn ctermbg=NONE guibg=NONE
exe "hi LineNr ctermfg=11 guifg=".color11
exe "hi CursorLineNr ctermfg=11 guifg=".color11
exe "hi Error ctermbg=9 guibg=".color9
exe "hi ErrSign ctermfg=3 guifg=".color3
exe "hi WarnSign ctermfg=6 guifg=".color6
exe "hi InfoSign ctermfg=7 guifg=".color7

hi! link LspDiagnosticsVirtualTextError ErrSign
hi! link LspDiagnosticsVirtualTextWarning WarnSign
hi! link LspDiagnosticsVirtualTextInformation InfoSign
hi! link LspDiagnosticsVirtualTextHint InfoSign

hi! link LspDiagnosticsFloatingError ErrSign
hi! link LspDiagnosticsFloatingWarning WarnSign
hi! link LspDiagnosticsFloatingInformation InfoSign
hi! link LspDiagnosticsFloatingHint InfoSign

hi! link ErrorMsg Error
