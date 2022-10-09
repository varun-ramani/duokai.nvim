set background=dark
let g:colors_name="duokai"

lua package.loaded['lush_theme.duokai'] = nil

lua require('lush')(require('lush_theme.duokai'))
