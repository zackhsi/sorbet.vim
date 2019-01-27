sorbet.vim
==========

Installation
------------

```vim
Plug 'zackhsi/sorbet.vim'
```

Configuration
-------------

`sorbet.vim` exposes two new syntax elements:
- `Sig`
- `SigBlockDelimiter`

They can be stylized, for example:

```vim
highlight Sig               cterm=italic ctermfg=1 ctermbg=11
highlight SigBlockDelimiter cterm=italic ctermfg=9 ctermbg=11
```
