set background=dark
let g:colors_name="monokaipro"

lua package.loaded['lush_theme.monokaipro'] = nil

lua require('lush')(require('lush_theme.monokaipro'))
