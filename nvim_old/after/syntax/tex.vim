if !has('conceal')
  finish
endif

" Original file is https://github.com/wjakob/wjakob.vim/blob/master/after/syntax/tex.vim

" more reasonably sized symbols that were already defined
syn match texMathSymbol '\\Rightarrow\>' contained conceal cchar=⇒
syn match texMathSymbol '\\Leftarrow\>' contained conceal cchar=⇐
syn match texMathSymbol '\\rightarrow\>' contained conceal cchar=→
syn match texMathSymbol '\\leftarrow\>' contained conceal cchar=←
syn match texMathSymbol '\\emptyset\>' contained conceal cchar=Ø
syn match texMathSymbol '\\varphi\>' contained conceal cchar=φ
syn match texMathSymbol '\\phi\>' contained conceal cchar=Φ
syn match texMathSymbol '\\langle\>\s*' contained conceal cchar=⟨
syn match texMathSymbol '\s*\\rangle\>' contained conceal cchar=⟩
syn match texMathSymbol '\\\\' contained conceal cchar=⏎

" logical symbols
syn match texMathSymbol '\\lor\>' contained conceal cchar=∨
syn match texMathSymbol '\\land\>' contained conceal cchar=∧
syn match texMathSymbol '\\lnot\>' contained conceal cchar=¬
syn match texMathSymbol '\\implies\>' contained conceal cchar=⇒

" \mathbb characters
syn match texMathSymbol '\\mathbb{\s*N\s*}' contained conceal cchar=ℕ
syn match texMathSymbol '\\mathbb{\s*Q\s*}' contained conceal cchar=ℚ
syn match texMathSymbol '\\mathbb{\s*R\s*}' contained conceal cchar=ℝ
syn match texMathSymbol '\\mathbb{\s*Z\s*}' contained conceal cchar=ℤ

" \mathsf characters
syn match texMathSymbol '\\vec{\s*a\s*}' contained conceal cchar=𝕒
syn match texMathSymbol '\\vec{\s*b\s*}' contained conceal cchar=𝕓
syn match texMathSymbol '\\vec{\s*c\s*}' contained conceal cchar=𝕔
syn match texMathSymbol '\\vec{\s*d\s*}' contained conceal cchar=𝕕
syn match texMathSymbol '\\vec{\s*e\s*}' contained conceal cchar=𝕖
syn match texMathSymbol '\\vec{\s*f\s*}' contained conceal cchar=𝕗
syn match texMathSymbol '\\vec{\s*g\s*}' contained conceal cchar=𝕘
syn match texMathSymbol '\\vec{\s*h\s*}' contained conceal cchar=𝕙
syn match texMathSymbol '\\vec{\s*i\s*}' contained conceal cchar=𝕚
syn match texMathSymbol '\\vec{\s*j\s*}' contained conceal cchar=𝕛
syn match texMathSymbol '\\vec{\s*k\s*}' contained conceal cchar=𝕜
syn match texMathSymbol '\\vec{\s*l\s*}' contained conceal cchar=𝕝
syn match texMathSymbol '\\vec{\s*m\s*}' contained conceal cchar=ᵐ
syn match texMathSymbol '\\vec{\s*n\s*}' contained conceal cchar=𝕟
syn match texMathSymbol '\\vec{\s*o\s*}' contained conceal cchar=𝕠
syn match texMathSymbol '\\vec{\s*p\s*}' contained conceal cchar=𝕡
syn match texMathSymbol '\\vec{\s*q\s*}' contained conceal cchar=𝕢
syn match texMathSymbol '\\vec{\s*r\s*}' contained conceal cchar=𝕣
syn match texMathSymbol '\\vec{\s*s\s*}' contained conceal cchar=𝕤
syn match texMathSymbol '\\vec{\s*t\s*}' contained conceal cchar=𝕥
syn match texMathSymbol '\\vec{\s*u\s*}' contained conceal cchar=𝕦
syn match texMathSymbol '\\vec{\s*v\s*}' contained conceal cchar=𝕧
syn match texMathSymbol '\\vec{\s*w\s*}' contained conceal cchar=ʷ
syn match texMathSymbol '\\vec{\s*x\s*}' contained conceal cchar=𝕩
syn match texMathSymbol '\\vec{\s*y\s*}' contained conceal cchar=𝕪
syn match texMathSymbol '\\vec{\s*z\s*}' contained conceal cchar=𝕫

syn match texStatement '``' contained conceal cchar=“
syn match texStatement '\'\'' contained conceal cchar=”
syn match texStatement '\\item\>' contained conceal cchar=•
syn match texStatement '\\ldots' contained conceal cchar=…
syn match texStatement '\\quad' contained conceal cchar=  
syn match texStatement '\\qquad' contained conceal cchar=    
"syn match texMathSymbol '\\setminus\>' contained conceal cchar=\
syn match texMathSymbol '\\coloneqq\>' contained conceal cchar=≔
syn match texMathSymbol '\\colon\>' contained conceal cchar=:
syn match texMathSymbol '\\:' contained conceal cchar= 
syn match texMathSymbol '\\;' contained conceal cchar= 
syn match texMathSymbol '\\,' contained conceal cchar= 
syn match texMathSymbol '\\ ' contained conceal cchar= 
syn match texMathSymbol '\\quad' contained conceal cchar=  
syn match texMathSymbol '\\qquad' contained conceal cchar=    
syn match texMathSymbol '\\sqrt' contained conceal cchar=√
syn match texMathSymbol '\\sqrt\[3]' contained conceal cchar=∛
syn match texMathSymbol '\\sqrt\[4]' contained conceal cchar=∜
"syn match texMathSymbol '\\\!' contained conceal
syn match texMathSymbol '\\therefore' contained conceal cchar=∴
syn match texMathSymbol '\\because' contained conceal cchar=∵

if !exists('g:tex_conceal_frac')
  let g:tex_conceal_frac = 0
endif
if g:tex_conceal_frac == 1
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(1\|{1}\)\(2\|{2}\)' contained conceal cchar=½
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(1\|{1}\)\(3\|{3}\)' contained conceal cchar=⅓
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(2\|{2}\)\(3\|{3}\)' contained conceal cchar=⅔
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(1\|{1}\)\(4\|{4}\)' contained conceal cchar=¼
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(1\|{1}\)\(5\|{5}\)' contained conceal cchar=⅕
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(2\|{2}\)\(5\|{5}\)' contained conceal cchar=⅖
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(3\|{3}\)\(5\|{5}\)' contained conceal cchar=⅗
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(4\|{4}\)\(5\|{5}\)' contained conceal cchar=⅘
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(1\|{1}\)\(6\|{6}\)' contained conceal cchar=⅙
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(5\|{5}\)\(6\|{6}\)' contained conceal cchar=⅚
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(1\|{1}\)\(8\|{8}\)' contained conceal cchar=⅛
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(3\|{3}\)\(8\|{8}\)' contained conceal cchar=⅜
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(5\|{5}\)\(8\|{8}\)' contained conceal cchar=⅝
  syn match texMathSymbol '\\\(\(d\|t\)\|\)frac\(7\|{7}\)\(8\|{8}\)' contained conceal cchar=⅞
end

" hide \text delimiter etc inside math mode
if !exists("g:tex_nospell") || !g:tex_nospell
  syn region texMathText matchgroup=texStatement start='\\\%(\%(inter\)\=mathrm\)\s*{'     end='}' concealends keepend contains=@texFoldGroup containedin=texMathMatcher
  syn region texMathText matchgroup=texStatement start='\\\%(\%(inter\)\=text\|mbox\)\s*{' end='}' concealends keepend contains=@texFoldGroup,@Spell containedin=texMathMatcher
else
  syn region texMathText matchgroup=texStatement start='\\\%(\%(inter\)\=text\|mbox\|mathrm\)\s*{' end='}' concealends keepend contains=@texFoldGroup containedin=texMathMatcher
endif

syn region texBoldMathText  matchgroup=texStatement start='\\\%(mathbf\|bm\|symbf\|pmb\){' end='}' concealends contains=@texMathZoneGroup containedin=texMathMatcher
syn cluster texMathZoneGroup add=texBoldMathText

syn region texBoldItalStyle matchgroup=texTypeStyle start="\\emph\s*{" end="}" concealends contains=@texItalGroup
syn region texItalStyle  matchgroup=texTypeStyle start="\\emph\s*{" end="}" concealends contains=@texItalGroup
syn region texMatcher matchgroup=texTypeStyle start="\\\%(underline\|uline\){" end="}" concealends contains=@texItalGroup

hi texBoldMathText cterm=bold gui=bold
hi texUnderStyle cterm=underline gui=underline
match texUnderStyle /\\\%(underline\|uline\){\zs\(.\([^\\]}\)\@<!\)\+\ze}/

" set ambiwidth=single

" Simple number super/sub-scripts

if !exists("g:tex_superscripts")
  let s:tex_superscripts= '[0-9a-zA-W.,:;+-<>/()=]'
else
  let s:tex_superscripts= g:tex_superscripts
endif
if !exists("g:tex_subscripts")
  let s:tex_subscripts= "[0-9aeijoruvx,+-/().]"
else
  let s:tex_subscripts= g:tex_subscripts
endif

" s:SuperSub:
fun! s:SuperSub(leader, pat, cchar)
  if a:pat =~# '^\\' || (a:leader == '\^' && a:pat =~# s:tex_superscripts) || (a:leader == '_' && a:pat =~# s:tex_subscripts)
    exe "syn match texMathSymbol '".a:leader.'\%('.a:pat.'\|{\s*'.a:pat.'\s*}\)'."' contained conceal cchar=".a:cchar
  endif
endfun

call s:SuperSub('\^','0','⁰')
call s:SuperSub('\^','1','¹')
call s:SuperSub('\^','2','²')
call s:SuperSub('\^','3','³')
call s:SuperSub('\^','4','⁴')
call s:SuperSub('\^','5','⁵')
call s:SuperSub('\^','6','⁶')
call s:SuperSub('\^','7','⁷')
call s:SuperSub('\^','8','⁸')
call s:SuperSub('\^','9','⁹')
call s:SuperSub('\^','a','ᵃ')
call s:SuperSub('\^','b','ᵇ')
call s:SuperSub('\^','c','ᶜ')
call s:SuperSub('\^','d','ᵈ')
call s:SuperSub('\^','e','ᵉ')
call s:SuperSub('\^','f','ᶠ')
call s:SuperSub('\^','g','ᵍ')
call s:SuperSub('\^','h','ʰ')
call s:SuperSub('\^','i','ⁱ')
call s:SuperSub('\^','j','ʲ')
call s:SuperSub('\^','k','ᵏ')
call s:SuperSub('\^','l','ˡ')
call s:SuperSub('\^','m','ᵐ')
call s:SuperSub('\^','n','ⁿ')
call s:SuperSub('\^','o','ᵒ')
call s:SuperSub('\^','p','ᵖ')
call s:SuperSub('\^','r','ʳ')
call s:SuperSub('\^','s','ˢ')
call s:SuperSub('\^','t','ᵗ')
call s:SuperSub('\^','u','ᵘ')
call s:SuperSub('\^','v','ᵛ')
call s:SuperSub('\^','w','ʷ')
call s:SuperSub('\^','x','ˣ')
call s:SuperSub('\^','y','ʸ')
call s:SuperSub('\^','z','ᶻ')
call s:SuperSub('\^','A','ᴬ')
call s:SuperSub('\^','B','ᴮ')
call s:SuperSub('\^','D','ᴰ')
call s:SuperSub('\^','E','ᴱ')
call s:SuperSub('\^','G','ᴳ')
call s:SuperSub('\^','H','ᴴ')
call s:SuperSub('\^','I','ᴵ')
call s:SuperSub('\^','J','ᴶ')
call s:SuperSub('\^','K','ᴷ')
call s:SuperSub('\^','L','ᴸ')
call s:SuperSub('\^','M','ᴹ')
call s:SuperSub('\^','N','ᴺ')
call s:SuperSub('\^','O','ᴼ')
call s:SuperSub('\^','P','ᴾ')
call s:SuperSub('\^','R','ᴿ')
call s:SuperSub('\^','T','ᵀ')
call s:SuperSub('\^','U','ᵁ')
call s:SuperSub('\^','W','ᵂ')
call s:SuperSub('\^','+','⁺')
call s:SuperSub('\^','-','⁻')
call s:SuperSub('\^','<','˂')
call s:SuperSub('\^','>','˃')
call s:SuperSub('\^','/','ˊ')
call s:SuperSub('\^','(','⁽')
call s:SuperSub('\^',')','⁾')
call s:SuperSub('\^','\.','˙')
call s:SuperSub('\^','=','˭')
call s:SuperSub('\^','\\alpha','ᵅ')
call s:SuperSub('\^','\\beta','ᵝ')
call s:SuperSub('\^','\\gamma','ᵞ')
call s:SuperSub('\^','\\delta','ᵟ')
call s:SuperSub('\^','\\epsilon','ᵋ')
call s:SuperSub('\^','\\theta','ᶿ')
call s:SuperSub('\^','\\iota','ᶥ')
call s:SuperSub('\^','\\Phi','ᶲ')
call s:SuperSub('\^','\\varphi','ᵠ')
call s:SuperSub('\^','\\chi','ᵡ')

syn match texMathSymbol '\^\%(\*\|\\ast\|\\star\|{\s*\\\%(ast\|star\)\s*}\)' contained conceal cchar=˟
syn match texMathSymbol '\^{\s*-1\s*}' contained conceal contains=texSuperscripts
syn match texMathSymbol '\^\%(\\math\%(rm\|sf\){\s*T\s*}\|{\s*\\math\%(rm\|sf\){\s*T\s*}\s*}\)' contained conceal contains=texSuperscripts
syn match texMathSymbol '\^\%(\\math\%(rm\|sf\){\s*-T\s*}\|{\s*\\math\%(rm\|sf\){\s*-T\s*}\s*}\|{\s*-\s*\\math\%(rm\|sf\){\s*T\s*}\s*}\)' contained conceal contains=texSuperscripts
syn match texSuperscripts '1' contained conceal cchar=¹
syn match texSuperscripts '-' contained conceal cchar=⁻
syn match texSuperscripts 'T' contained conceal cchar=ᵀ

call s:SuperSub('_','0','₀')
call s:SuperSub('_','1','₁')
call s:SuperSub('_','2','₂')
call s:SuperSub('_','3','₃')
call s:SuperSub('_','4','₄')
call s:SuperSub('_','5','₅')
call s:SuperSub('_','6','₆')
call s:SuperSub('_','7','₇')
call s:SuperSub('_','8','₈')
call s:SuperSub('_','9','₉')
call s:SuperSub('_','a','ₐ')
call s:SuperSub('_','e','ₑ')
call s:SuperSub('_','h','ₕ')
call s:SuperSub('_','i','ᵢ')
call s:SuperSub('_','j','ⱼ')
call s:SuperSub('_','k','ₖ')
call s:SuperSub('_','l','ₗ')
call s:SuperSub('_','m','ₘ')
call s:SuperSub('_','n','ₙ')
call s:SuperSub('_','o','ₒ')
call s:SuperSub('_','p','ₚ')
call s:SuperSub('_','r','ᵣ')
call s:SuperSub('_','s','ₛ')
call s:SuperSub('_','t','ₜ')
call s:SuperSub('_','u','ᵤ')
call s:SuperSub('_','v','ᵥ')
call s:SuperSub('_','x','ₓ')
call s:SuperSub('_','+','₊')
call s:SuperSub('_','-','₋')
call s:SuperSub('_','/','ˏ')
call s:SuperSub('_','(','₍')
call s:SuperSub('_',')','₎')
call s:SuperSub('_','\\beta','ᵦ')
call s:SuperSub('_','\\rho','ᵨ')
call s:SuperSub('_','\\phi','ᵩ')
call s:SuperSub('_','\\gamma','ᵧ')
call s:SuperSub('_','\\chi','ᵪ')
