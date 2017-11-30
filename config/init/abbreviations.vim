cabbrev So so
cabbrev Vne vne
cabbrev W w
cabbrev H h

ab  
iabbrev bpp binding.pry
iabbrev cld console.log("~~~~~~")console.log("~~~~~")Oconsole.log()F(a
iabbrev fnn function(){}F(a
iabbrev iff if (){}F(a
augroup my_ruby_abbr
  au!
    au FileType ruby :iabbrev <buffer> iff ifkA
augroup end
iabbrev iimp !important;
