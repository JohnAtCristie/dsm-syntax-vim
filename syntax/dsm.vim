"Vim syntax file for dsm.{opt|sys}
" Maintainer: John Skjönsberg (johns@crisite.se)
"
if exists("b:current_syntax")
	finish
endif

"  DSM option files comments start with a *
syntax keyword dsmTodo contained TODO FIXME XXX NOTE
syntax match dsmComment "^*.*$" contains=dsmTodo

syntax match dsmNumber '\d\+' contained display

"syntax match dsmParam
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
	\ EXCLUDE\.DIR
	\ EXCLUDE\.BACKUP
	\ TCPS[ERVERADDRESS]
	\ SSLFIPSMODE
	\ ENCRYPTIONT[ype]
	\ ENCRYPTK[ey]
	\ SSLREQ[uired]
	\ SSLDISABLELEGACY[tls]
	\ SSL nextgroup=dsmNumber

syntax region dsmString start='"' end='"' contained
syntax region dsmDesc start='"' end='"'

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
