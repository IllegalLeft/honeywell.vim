scriptencoding utf-8

let g:airline#themes#honeywell#palette = {}

" Normal Mode
let s:N1    = [ '#000000', '#000000', 254, 241 ]
let s:N2    = [ '#000000', '#000000', 254, 243 ]
let s:N3    = [ '#000000', '#000000', 254, 245 ]
let g:airline#themes#honeywell#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Insert Mode
let s:I1    = [ '#000000', '#000000', 254, 124 ]
let s:I2    = [ '#000000', '#000000', 254,  88 ]
let s:I3    = s:N3
let g:airline#themes#honeywell#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" Visual Mode
let s:V1    = [ '#000000', '#000000', 254, 237 ]
let s:V2    = [ '#000000', '#000000', 254, 238 ]
let s:V3    = s:N3
let g:airline#themes#honeywell#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" Replace Mode
let s:R1    = [ '#000000', '#000000', 235, 251 ]
let s:R2    = s:N2
let s:R3    = s:N3
let g:airline#themes#honeywell#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive Mode
let s:IN1   = [ '#000000', '#000000', 247, 244 ]
let s:IN2   = s:N2
let s:IN3   = s:N3
let g:airline#themes#honeywell#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
