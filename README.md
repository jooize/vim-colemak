vim-colemak
===========

Colemak key mappings for Vim. Heavily trimmed and modified version of [Shai Coleman's configuration](http://colemak.com/pub/vim/colemak.vim).

Installation
------------

It is recommended to load `colemak.vim` after all other Vim scripts. If you use Vundle or Pathogen, I suggest adding a line to reload the script at the bottom of your Vim configuration file.

    " Reload colemak.vim to remap any overridden keys
    silent! source "$HOME/.vim/bundle/vim-colemak/plugin/colemak.vim"

### [Vundle](https://github.com/gmarik/vundle)

1. Add `Bundle 'jooize/vim-colemak'` to `~/.vim/bundles.vim`.
2. Run `vim +BundleInstall` or `:BundleInstall` within Vim.

### [Pathogen](https://github.com/tpope/vim-pathogen)

    git clone git@github.com:jooize/vim-colemak.git $HOME/.vim/bundle/vim-colemak

Issues
------

### [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) keymap collision

    " Fix for colemak.vim keymap collision. tpope/vim-fugitive's maps y<C-G>
    " and colemak.vim maps 'y' to 'w' (word). In combination this stalls 'y'
    " because Vim must wait to see if the user wants to press <C-G> as well.
    augroup RemoveFugitiveMappingForColemak
        autocmd!
        autocmd BufEnter * silent! execute "nunmap <buffer> <silent> y<C-G>"
    augroup END

Key mappings
------------

    Colemak layout:                  |                 QWERTY layout:
    `12345 67890-=     Move around:  |  (instead of)   `12345 67890-=
     qwfpg jluy;[]\         e        |       k          qwert yuiop[]\
     arstd HNEIo'         h   i      |     h   l        asdfg HJKL;'
     zxcvb km,./            n        |       j          zxcvb nm,./
 
    (  novx)  h = h (Left)     i = l (Right)     e = k (Up)     n = j (Down)
    (  novx)  H = 5h (Left*5)  I = 5l (Right*5)  E = 5k (Up*5)  N = 5k (Down*5)
 
    (  novx)  l = b (Back word)            L = B (Back WORD)
    (  novx)  y = w (Forward word)         Y = W (Forward WORD)
    (  novx)  u = e (Forward end of word)  U = E (Forward end of WORD)
 
    (c     )  <C-L> = <C-Left> (Back WORD)
    (c     )  <C-Y> = <C-Right> (Seems to equal forward WORD minus 1 character)
 
    (  n  x)  a = v (Visual)   A = V (Visual line)
    (  n   )  r = r (Replace)  R = R (Replace)
    (  n   )  s = i (Insert)   S = I (Insert before first non-blank of line)
    (  n   )  t = a (Append)   T = A (Append at end of line)
    (  n   )  w = c (Change)   W = C (Change to end of line)  ww = cc (Change line)
 
    (  n  x)  z = u (Undo)    Z = <C-R> (Redo)  gz = U (Undo all latest changes on line)
    (  n  x)  x = x (Cut)     X = dd (Cut line)
    (  n  x)  c = y (Copy)    C = yy (Copy line)
    (  n  x)  v = p (Paste)   V = P (Paste)
    (  n  x)  gv = gp (Paste) gV = gP (Paste)
 
    (   o  )  r = i (Example: dip -> drp (Delete inner paragraph))
 
    (  no x)  p = t{char} (Before next {char})  P = T{char} (After previous {char})
    (  no x)  b = ; (Repeat latest f or t)  B = , (Repeat latest f or t reversed)
    (  no x)  k = n (Repeat latest / or ?)  K = N (Repeat latest / or ? reversed)
 
    (  n  x)  j = z
    (  n  x)  jn = zj (Next fold) [Also jj = zj]
    (  n  x)  je = zk (Previous fold) [Also jk = zk]
 
    (  n  x)  gK = K (Lookup)
    (  n  x)  gL = L (To line [count] from bottom of window)
 
    (  n  x)  <C-W>h = <C-W>h (Window left)
    (  n  x)  <C-W>n = <C-W>j (Window down)
    (  n  x)  <C-W>e = <C-W>k (Window up)
    (  n  x)  <C-W>i = <C-W>l (Window right)
 
    Lost:
    (  n  x)  H (To line [count] from top of window)
    (  n  x)  s (Substitute [count] characters) [Use wi = cl]
    (  n  x)  S (Substitute [count] lines) [Use ww = cc]
    (  n  x)  X (Cut [count] characters backwards) [Use dh = dh]
    (  n   )  Z (Quit)
    (  n  x)  <C-W>n (Window down) [Use <C-W><C-N> = <C-W><C-N>]
    (  n  x)  <C-W>i (Window down) [Use <C-W><C-I> = <C-W><C-I>]
 
    Legend:
    <C-X>     Ctrl-X
    (c     )  Command-line mode
    ( i    )  Insert mode
    (  n   )  Normal mode
    (   o  )  Operator pending
    (    v )  Visual+Select mode
    (     x)  Visual mode

