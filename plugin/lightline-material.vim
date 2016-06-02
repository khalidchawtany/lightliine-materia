" File: lightline-material.vim
" Description: lightline.vim theme for material colorscheme
" Author: khalidchawtany <khalidchawtany@yahoo.com>
" Source: https://github.com/khalidchawtany/lightline-material

let s:is_dark=(&background == 'dark')

let s:mono0   = '#EFEFEF'
let s:c_mono0 = 235

let s:mono1   = '#212324'
let s:mono2   = '#203945'
let s:mono3   = '#2e3132'
let s:mono4   = '#4f5064'
let s:mono5   = '#A2A3A4'
let s:c_mono1 = 237
let s:c_mono2 = 239
let s:c_mono3 = 241
let s:c_mono4 = 243
let s:c_mono5 = 245

let s:red      = '#E50B14'
let s:green    = '#00914C'
let s:blue     = '#4285F4'
let s:orange   = '#FBBC05'
let s:c_red    = 167
let s:c_green  = 142
let s:c_blue   = 109
let s:c_orange = 208


let s:p = {
      \ 'normal':   {},
      \ 'inactive': {},
      \ 'insert':   {},
      \ 'replace':  {},
      \ 'visual':   {},
      \ 'tabline':  {}}


let s:p.normal.middle = [
      \ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
let s:p.normal.left = [
      \ [s:mono0, s:green, s:c_mono0, s:c_green],
      \ [s:mono5, s:mono3, s:c_mono5, s:c_mono3]]
let s:p.normal.right = [
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]

let s:p.inactive.middle = [
      \ [s:mono4, s:mono2, s:c_mono4, s:c_mono2]]
let s:p.inactive.right = [
      \ s:p.inactive.middle[0],
      \ s:p.inactive.middle[0]]
let s:p.inactive.left = [
      \ s:p.inactive.middle[0],
      \ s:p.inactive.middle[0]]

let s:p.insert.left = [
      \ [s:mono0, s:blue, s:c_mono0, s:c_blue],
      \ s:p.normal.left[1]]
let s:p.replace.left = [
      \ [s:mono0, s:red, s:c_mono0, s:c_red],
      \ s:p.normal.left[1]]
let s:p.visual.left = [
      \ [s:mono0, s:orange, s:c_mono0, s:c_orange],
      \ s:p.normal.left[1]]

let s:p.tabline.middle = [
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
let s:p.tabline.right = [
      \ [s:mono4, s:mono1, s:c_mono4, s:c_mono1],
      \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
let s:p.tabline.left = [
      \ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
let s:p.tabline.tabsel = [
      \ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]

let g:lightline#colorscheme#material#palette = s:p

let g:lightline.colorscheme = 'material'
call lightline#init()
call lightline#update()
