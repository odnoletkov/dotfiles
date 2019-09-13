let g:sleuth_neighbor_limit = 0
let g:flagship_skip = 'SleuthIndicator'
command! -bar -bang SleuthReset let g:sleuth_neighbor_limit=20 <Bar> :Sleuth
