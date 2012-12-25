" Description {
"   Original by Shai Coleman, 2008-04-21.  http://colemak.com/
"   Modified by Joel Esko, 2012-09-14.
"
"   It is recommended to load colemak.vim after all other Vim scripts.
"
"   Colemak layout:                  |                 QWERTY layout:
"   `12345 67890-=     Move around:  |  (instead of)   `12345 67890-=
"    qwfpg jluy;[]\         e        |       k          qwert yuiop[]\
"    arstd HNEIo'         h   i      |     h   l        asdfg HJKL;'
"    zxcvb km,./            n        |       j          zxcvb nm,./
"
"   (  novx)  h = h (Left)     i = l (Right)     e = k (Up)     n = j (Down)
"   (  novx)  H = 5h (Left*5)  I = 5l (Right*5)  E = 5k (Up*5)  N = 5k (Down*5)
"
"   (  novx)  l = b (Back word)            y = w (Forward word)
"   (  novx)  L = B (Back WORD)            Y = W (Forward WORD)
"   (  novx)  u = e (Forward end of word)  U = E (Forward end of WORD)
"
"   (c     )  <C-L> = <C-Left> (Back WORD)
"   (c     )  <C-Y> = <C-Right> (Seems to equal forward WORD minus 1 character)
"
"   (  n  x)  a = v (Visual)   A = V (Visual line)
"   (  n   )  r = r (Replace)  R = R (Replace)
"   (  n   )  s = i (Insert)   S = I (Insert before first non-blank of line)
"   (  n   )  t = a (Append)   T = A (Append at end of line)
"   (  n   )  w = c (Change)   W = C (Change to end of line)  ww = cc (Change line)
"
"   (  n  x)  z = u (Undo)    Z = <C-R> (Redo)  gz = U (Undo all latest changes on line)
"   (  n  x)  x = x (Cut)     X = dd (Cut line)
"   (  n  x)  c = y (Copy)    C = yy (Copy line)
"   (  n  x)  v = gP (Paste)  V = p (Paste)
"
"   (  no x)  p = t{char} (Before next {char})  P = T{char} (After previous {char})
"   (  no x)  b = ; (Repeat latest f or t)  B = , (Repeat latest f or t reversed)
"   (  no x)  k = n (Repeat latest / or ?)  K = N (Repeat latest / or ? reversed)
"
"   (  n  x)  j = z
"
"   (   o  )  r = i (Example: dip -> drp (Delete inner paragraph)) [Safe]
"   (  n  x)  gL = L (To line [count] from bottom of window)
"
"   (  n  x)  gX = X (Cut backwards, synonymous with dh) [Safe]
"   (  n  x)  gK = K (Lookup) [Safe]
"
"   (  n  x)  <C-W>h = <C-W>h (Window left) [Override! Alt: <C-W><Left> or <C-W><C-H> or <C-W><BS>]
"   (  n  x)  <C-W>n = <C-W>j (Window down) [Override! Alt: <C-W><C-N>]
"   (  n  x)  <C-W>e = <C-W>k (Window up) [Safe]
"   (  n  x)  <C-W>i = <C-W>l (Window right) [Override! Alt: <C-W><C-I>]
"
"   Legend:
"   <C-X>     Ctrl-X
"   <S-X>     Shift-X
"   (c     )  Command-line mode
"   ( i    )  Insert mode
"   (  n   )  Normal mode
"   (   o  )  Operator pending
"   (    v )  Visual+Select mode
"   (     x)  Visual mode
" }
" Require Vim >=7.0 {
    if v:version < 700 | echohl WarningMsg | echo "colemak.vim: You need Vim version 7.0 or later." | echohl None | finish | endif
" }
" Up/down/left/right {
    " Always go down/up one line regardless of "set wrap". Is that a sane default?
    nnoremap h h|xnoremap h h|onoremap h h|
    nnoremap n gj|xnoremap n gj|onoremap n gj|
    nnoremap e gk|xnoremap e gk|onoremap e gk|
    nnoremap i l|xnoremap i l|onoremap i l|
" }
" Turbo navigation {
    " Works with counts, see ":help complex-repeat"
    nnoremap <silent> H @='5h'<CR>|xnoremap <silent> H @='5h'<CR>|onoremap <silent> H @='5h'<CR>|
    nnoremap <silent> N @='5gj'<CR>|xnoremap <silent> N @='5gj'<CR>|onoremap <silent> N @='5gj'<CR>|
    nnoremap <silent> E @='5gk'<CR>|xnoremap <silent> E @='5gk'<CR>|onoremap <silent> E @='5gk'<CR>|
    nnoremap <silent> I @='5l'<CR>|xnoremap <silent> I @='5l'<CR>|onoremap <silent> I @='5l'<CR>|
" }
" Words forward/backwards {
    " l/L = back word/WORD
    " u/U = end of word/WORD
    " y/Y = forward word/WORD
    nnoremap l b|xnoremap l b|onoremap l b|
    nnoremap L B|xnoremap L B|onoremap L B|
    nnoremap u e|xnoremap u e|onoremap u e|
    nnoremap U E|xnoremap U E|onoremap U E|
    nnoremap y w|xnoremap y w|onoremap y w|
    nnoremap Y W|xnoremap Y W|onoremap Y W|
    cnoremap <C-l> <C-Left>
    cnoremap <C-y> <C-Right>
" }
" inSert/Replace/append (T) {
    nnoremap s i|
    nnoremap S I|
    nnoremap t a|
    nnoremap T A|
" }
" Change {
    nnoremap w c|xnoremap w c|
    nnoremap W C|xnoremap W C|
    nnoremap ww cc|
" }
" Cut/copy/paste {
    nnoremap x x|xnoremap x d|
    nnoremap c y|xnoremap c y|
    nnoremap v gP|xnoremap v gP|
    nnoremap X dd|xnoremap X d|
    nnoremap C yy|xnoremap C y|
    nnoremap V p|xnoremap V p|
" }
" Undo/redo {
    nnoremap z u|xnoremap z :<C-u>undo<CR>|
    nnoremap gz U|xnoremap gz :<C-u>undo<CR>|
    nnoremap Z <C-r>|xnoremap Z :<C-u>redo<CR>|
" }
" Visual mode {
    nnoremap a v|xnoremap a v|
    nnoremap A V|xnoremap A V|
    " Make insert/add work also in visual line mode like in visual block mode
    xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")
    xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")
    xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-v>0o$A" : "A")
    xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-v>0o$A" : "A")
" }
" Search {
    " f/F are unchanged
    nnoremap p t|xnoremap p t|onoremap p t|
    nnoremap P T|xnoremap P T|onoremap P T|
    nnoremap b ;|xnoremap b ;|onoremap b ;|
    nnoremap B ,|xnoremap B ,|onoremap B ,|
    nnoremap k n|xnoremap k n|onoremap k n|
    nnoremap K N|xnoremap K N|onoremap K N|
" }
" inneR text objects {
    " e.g. dip (delete inner paragraph) is now drp
    onoremap r i
" }
" Folds, etc. {
    nnoremap j z|xnoremap j z|
" }
" Overridden keys must be prefixed with g {
    nnoremap gX X|xnoremap gX X|
    nnoremap gK K|xnoremap gK K|
    nnoremap gL L|xnoremap gL L|
" }
" Window handling {
    nnoremap <C-w>n <C-w>j|xnoremap <C-w>n <C-w>j|
    nnoremap <C-w>e <C-w>k|xnoremap <C-w>e <C-w>k|
    nnoremap <C-w>i <C-w>l|xnoremap <C-w>i <C-w>l|
" }

