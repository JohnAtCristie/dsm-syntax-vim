"Vim syntax file for dsm.{opt|sys}
" Maintainer: John Skjönsberg (johns@crisite.se)
" URL: https://github.com/JohnAtCristie/dsm-syntax-vim
" Last Change: 2014-12-16
if exists("b:current_syntax")
	finish
endif

" Ignore casing
syntax case ignore

"  DSM option files comments start with a *
syntax keyword dsmTodo contained TODO FIXME XXX NOTE
syntax match dsmComment "^*.*$" contains=dsmTodo

" Hmm...
syntax match dsmNumber '\d\+' contained display

" dsm.sys keyword list, continuously growing
syntax keyword dsmOptKeyword
	\ COMMM[ETHOD]
	\ SE[RVERNAME]
	\ NOD[ENAME]
	\ TCPW[INDOWSIZE]
	\ TCPP[ORT]
	\ TCPADMINP[ORT]
	\ SNAPSHOTPROVIDERF[S]
	\ DEDUPL[ICATION]
	\ DEDUPCACHES[IZE]
	\ PASSWORDA[CCESS]
	\ ERRORLOGN[AME]
	\ SCHEDLOGN[AME]
	\ MANAGEDS[ERVICES]
	\ COMPRESS[ION]
	\ ENABLEDEDUPC[ACHE]
	\ DEDUPCASHES[IZE]
	\ EXCLUDE
	\ TCPS[ERVERADDRESS]
	\ SSLFIPSMODE
	\ ENCRYPTIONT[ype]
	\ ENCRYPTK[ey]
	\ SSLREQ[uired]
	\ SSLDISABLELEGACY[tls]
	\ SSL nextgroup=dsmNumber

" Strings
syntax region dsmString start='"' end='"' contained
syntax region dsmDesc start='"' end='"'

" Highlighting
highlight default link dsmTodo Todo
highlight default link dsmShebang Comment
highlight default link dsmComment Comment
highlight default link dsmMarker Comment
highlight default link dsmString Constant
highlight default link dsmNumber Number
highlight default link dsmDesc String
highlight default link dsmType Type
highlight default link dsmOptKeyword Keyword
let b:current_syntax = "dsm"
