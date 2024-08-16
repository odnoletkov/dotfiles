setlocal spell
setlocal iskeyword+=-
setlocal omnifunc=gitcommitcomplete#Complete

match Error /^Differential Revision: .*$/
