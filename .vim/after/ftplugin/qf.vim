setlocal errorformat=
			\%f\|%l\ col\ %c\ %trror\ %n\|%m,
			\%f\|%l\ col\ %c\ %tarning\ %n\|%m,
			\%f\|%l\ col\ %c\ %tote\ %n\|%m,
			\%f\|%l\ col\ %c\|%m

let &l:statusline = substitute(&l:statusline,'%l,%c%V','%l/%L','g')
