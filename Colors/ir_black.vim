" Original ir_black Color Scheme
" Colors from original ir_black.vim, using actual-terminal.vim values as fallbacks
" Variables match actual-terminal.vim structure, but use explicit hex values from ir_black where defined
" Based on ir_black's preferred terminal colors (lines 43-52) and explicit guifg colors

let black0 = "#4E4E4E"  " rgb(78, 78, 78) - Ansi 0 (ir_black preferred terminal color)
let black1 = "#070707"  " rgb(7, 7, 7) - NonText guifg
let black2 = "#121212"  " rgb(18, 18, 18) - CursorLine guibg
let black8 = "#7C7C7C"  " rgb(124, 124, 124) - Ansi 8 (ir_black preferred terminal color, also Comment guifg)
let gray1 = "#3D3D3D"  " rgb(61, 61, 61) - LineNr guifg
let gray2 = "#202020"  " rgb(32, 32, 32) - VertSplit guifg/guibg
let gray3 = "#CCCCCC"  " rgb(204, 204, 204) - StatusLine guifg
let gray4 = "#a0a8b0"  " rgb(160, 168, 176) - Folded guifg
let gray5 = "#384048"  " rgb(56, 64, 72) - Folded guibg
let gray6 = "#808080"  " rgb(128, 128, 128) - SpecialKey guifg
let gray7 = "#343434"  " rgb(52, 52, 52) - SpecialKey guibg
let gray8 = "#444444"  " rgb(68, 68, 68) - Pmenu guibg
let gray9 = "#8f8f8f"  " rgb(143, 143, 143) - Todo guifg
let red1 = "#FF6C60"  " rgb(255, 108, 96) - Ansi 1 (ir_black preferred terminal color, also Error/Warning guisp)
let red2 = "#371F1C"  " rgb(55, 31, 28) - LongLineWarning guibg
let red9 = "#FFB6B0"  " rgb(255, 182, 176) - Ansi 9 (ir_black preferred terminal color)
let green2 = "#A8FF60"  " rgb(168, 255, 96) - Ansi 2 (ir_black preferred terminal color, also String guifg)
let green10 = "#CEFFAB"  " rgb(206, 255, 171) - Ansi 10 (ir_black preferred terminal color)
let green11 = "#cae682"  " rgb(202, 230, 130) - PmenuSel guibg
let green12 = "#99CC99"  " rgb(153, 204, 153) - Constant guifg
let green13 = "#336633"  " rgb(51, 102, 51) - rubyStringDelimiter guifg
let yellow1 = "#2F2F00"  " rgb(47, 40, 0) - Search guibg
let yellow3 = "#FFFFB6"  " rgb(255, 255, 182) - Ansi 3 (ir_black preferred terminal color, also Type guifg)
let yellow4 = "#FFD2A7"  " rgb(255, 210, 167) - Function guifg
let yellow11 = "#FFFFCB"  " rgb(255, 255, 203) - Ansi 11 (ir_black preferred terminal color)
let blue1 = "#262D51"  " rgb(38, 45, 81) - Visual guibg
let blue4 = "#96CBFE"  " rgb(150, 203, 254) - Ansi 4 (ir_black preferred terminal color, also Keyword/PreProc guifg)
let blue5 = "#6699CC"  " rgb(102, 153, 204) - Conditional/Statement guifg
let blue12 = "#B5DCFE"  " rgb(181, 220, 254) - Ansi 12 (ir_black preferred terminal color)
let magenta5 = "#FF73FD"  " rgb(255, 115, 253) - Ansi 5 (ir_black preferred terminal color, also Number guifg)
let magenta13 = "#FF9CFE"  " rgb(255, 156, 254) - Ansi 13 (ir_black preferred terminal color)
let cyan6 = "#C6C5FE"  " rgb(198, 197, 254) - Ansi 6 (ir_black preferred terminal color, also Identifier/ModeMsg guifg)
let cyan7 = "#C6C5FE"  " rgb(198, 197, 254) - ModeMsg guibg
let cyan8 = "#00A0A0"  " rgb(0, 160, 160) - Delimiter guifg
let cyan14 = "#DFDFFE"  " rgb(223, 223, 254) - Ansi 14 (ir_black preferred terminal color)
let white1 = "#f6f3e8"  " rgb(246, 243, 232) - Normal guifg
let white7 = "#EEEEEE"  " rgb(238, 238, 238) - Ansi 7 (ir_black preferred terminal color)
let white15 = "#FFFFFF"  " rgb(255, 255, 255) - Ansi 15 (ir_black preferred terminal color)
let brown1 = "#857b6f"  " rgb(133, 123, 111) - MatchParen guibg
let brown2 = "#B18A3D"  " rgb(177, 138, 61) - rubyRegexp guifg
let orange1 = "#E18964"  " rgb(225, 137, 100) - Special guifg
let orange2 = "#FF8000"  " rgb(255, 128, 0) - rubyRegexpDelimiter guifg
