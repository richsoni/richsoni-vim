" Muted ir_black Palette
" Complete muted palette extrapolated from actual-terminal colors
" All 44 colors from ir_black, muted to match your terminal aesthetic
" Pattern: Dark colors lightened, bright colors softened (less saturated, more pastel)

" Blacks and Dark Grays - Lightened
let black0 = "#616261"  " rgb(97, 98, 97) - Ansi 0 (from actual-terminal)
let black1 = "#0F0F0F"  " rgb(15, 15, 15) - NonText guifg (muted from #070707)
let black2 = "#1A1A1A"  " rgb(26, 26, 26) - CursorLine guibg (muted from #121212)
let black8 = "#8D8E8D"  " rgb(141, 142, 141) - Ansi 8 (from actual-terminal)

" Grays - Lightened and softened
let gray1 = "#4D4D4D"  " rgb(77, 77, 77) - LineNr guifg (muted from #3D3D3D)
let gray2 = "#2D2D2D"  " rgb(45, 45, 45) - VertSplit guifg/guibg (muted from #202020)
let gray3 = "#D4D4D4"  " rgb(212, 212, 212) - StatusLine guifg (muted from #CCCCCC)
let gray4 = "#B0B8C0"  " rgb(176, 184, 192) - Folded guifg (muted from #a0a8b0)
let gray5 = "#4A545A"  " rgb(74, 84, 90) - Folded guibg (muted from #384048)
let gray6 = "#9A9A9A"  " rgb(154, 154, 154) - SpecialKey guifg (muted from #808080)
let gray7 = "#4A4A4A"  " rgb(74, 74, 74) - SpecialKey guibg (muted from #343434)
let gray8 = "#5A5A5A"  " rgb(90, 90, 90) - Pmenu guibg (muted from #444444)
let gray9 = "#A5A5A5"  " rgb(165, 165, 165) - Todo guifg (muted from #8f8f8f)

" Reds - Softened (less saturated, more pastel)
let red1 = "#FD8272"  " rgb(253, 130, 114) - Ansi 1 (from actual-terminal)
let red2 = "#4A2F2A"  " rgb(74, 47, 42) - LongLineWarning guibg (muted from #371F1C)
let red9 = "#FEC4BD"  " rgb(254, 196, 189) - Ansi 9 (from actual-terminal)

" Greens - Softened (less saturated, more pastel)
let green2 = "#B4FA73"  " rgb(180, 250, 115) - Ansi 2 (from actual-terminal)
let green10 = "#D6FCB9"  " rgb(214, 252, 185) - Ansi 10 (from actual-terminal)
let green11 = "#D8E8A8"  " rgb(216, 232, 168) - PmenuSel guibg (muted from #cae682)
let green12 = "#B4D9B4"  " rgb(180, 217, 180) - Constant guifg (muted from #99CC99)
let green13 = "#4A7A4A"  " rgb(74, 122, 74) - rubyStringDelimiter guifg (muted from #336633)

" Yellows - Softened (less saturated, more pastel)
let yellow1 = "#3F3F1A"  " rgb(63, 63, 26) - Search guibg (muted from #2F2F00)
let yellow3 = "#FEFCC3"  " rgb(254, 252, 195) - Ansi 3 (from actual-terminal)
let yellow4 = "#FEE0C0"  " rgb(254, 224, 192) - Function guifg (muted from #FFD2A7)
let yellow11 = "#FEFDD5"  " rgb(254, 253, 213) - Ansi 11 (from actual-terminal)

" Blues - Lightened and softened (more pastel)
let blue1 = "#3A425A"  " rgb(58, 66, 90) - Visual guibg (muted from #262D51)
let blue4 = "#A5D5FE"  " rgb(165, 213, 254) - Ansi 4 (from actual-terminal)
let blue5 = "#7AA8D4"  " rgb(122, 168, 212) - Conditional/Statement guifg (muted from #6699CC)
let blue12 = "#C1E3FE"  " rgb(193, 227, 254) - Ansi 12 (from actual-terminal)

" Magentas - Softened (less saturated, more pastel)
let magenta5 = "#FD8FFD"  " rgb(253, 143, 253) - Ansi 5 (from actual-terminal)
let magenta13 = "#FDB1FE"  " rgb(253, 177, 254) - Ansi 13 (from actual-terminal)

" Cyans - Lightened and softened (more pastel)
let cyan6 = "#D0D1FE"  " rgb(208, 209, 254) - Ansi 6 (from actual-terminal)
let cyan7 = "#D8D9FE"  " rgb(216, 217, 254) - ModeMsg guibg (muted from #C6C5FE)
let cyan8 = "#1AB8B8"  " rgb(26, 184, 184) - Delimiter guifg (muted from #00A0A0)
let cyan14 = "#E5E6FE"  " rgb(229, 230, 254) - Ansi 14 (from actual-terminal)

" Whites - Keep similar (already light)
let white1 = "#F8F6F0"  " rgb(248, 246, 240) - Normal guifg (muted from #f6f3e8)
let white7 = "#F1F0F2"  " rgb(241, 240, 242) - Ansi 7 (from actual-terminal)
let white15 = "#FEFEFE"  " rgb(254, 254, 254) - Ansi 15 (from actual-terminal)

" Browns - Softened (less saturated)
let brown1 = "#9A9084"  " rgb(154, 144, 132) - MatchParen guibg (muted from #857b6f)
let brown2 = "#C4A55A"  " rgb(196, 165, 90) - rubyRegexp guifg (muted from #B18A3D)

" Oranges - Softened (less saturated, more pastel)
let orange1 = "#E8A88A"  " rgb(232, 168, 138) - Special guifg (muted from #E18964)
let orange2 = "#FFB04D"  " rgb(255, 176, 77) - rubyRegexpDelimiter guifg (muted from #FF8000)

