"Vim syntax file for dsm.{opt|sys}
" Maintainer: John Skjönsberg (johns@crisite.se)
" URL: https://github.com/JohnAtCristie/dsm-syntax-vim
" Last Change: 2014-12-16
" Version: 0.6


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
	\ SNAPSHOTPROVIDERI[mage]
	\ DEDUPL[ICATION]
	\ DEDUPCACHES[IZE]
	\ DATE[format]
	\ PASSWORDA[CCESS]
	\ ERRORLOGN[AME]
	\ ERRORLOGR[etention]
	\ ERRORLOGMAX
	\ SCHEDLOGN[AME]
	\ SCHEDLOGR[etention]
	\ SCHEDLOGMAX
	\ MANAGEDS[ERVICES]
	\ COMPRESS[ION]
	\ ENABLEDEDUPC[ACHE]
	\ DEDUPCASHES[IZE]
	\ QUERYSCH[edperiod]
	\ EXCLUDE
	\ REVOKE[remoteaccess]
	\ VIRTUALM[ountpoint]
	\ SCHEDCMDD[isabled]
	\ SCHEDCMDE[xception]
	\ PRESC[hedulecmd]
	\ POSTSC[hedulecmd]
	\ PRENSC[hedulecmd]
	\ POSTNSC[hedulecmd]
	\ TCPS[ERVERADDRESS]
	\ SSLFIPSMODE
	\ ENCRYPTIONT[ype]
	\ ENCRYPTK[ey]
	\ SSLREQ[uired]
	\ SSLDISABLELEGACY[tls]
	\ SSL nextgroup=dsmNumber

" dsm Yes/no
syntax keyword dsmYN YES NO

" dsm encryption 
syntax keyword dsmENC AES128 AES256 DES56

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
highlight default link dsmYN boolean
highlight default link dsmENC PreProc
let b:current_syntax = "dsm"
