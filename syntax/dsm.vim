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
	\ COMMMETHOD
	\ NODENAME
	\ TCPWINDOWSIZE
	\ TCPPORT
	\ TCPADMINPORT
	\ SNAPSHOTPROVIDERFS
	\ DEDUPLICATION
	\ DEDUPCACHESIZE
	\ PASSWORDACCESS
	\ ERRORLOGNAME
	\ SCHEDLOGNAME
	\ MANAGEDSERVICES
	\ COMPRESSION
	\ ENABLEDEDUPCACHE
	\ DEDUPCASHESIZE
	\ EXCLUDE
	\ EXCLUDE\.DIR
	\ EXCLUDE\.BACKUP
	\ TCPSERVERADDRESS
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
