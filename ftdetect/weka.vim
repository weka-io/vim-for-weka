function! s:detect() abort
	if get(g:, 'weka_ticketFiletype')
		set filetype=wekaticket
	endif
endfunction

au BufReadPost,BufNewFile /home/*/.mozilla/firefox/**/itsalltext/wekaio.atlassian.*.txt call s:detect()
au BufReadPost,BufNewFile /tmp/textern-*/wekaio.atlassian.net*.txt call s:detect()
au BufReadPost,BufNewFile /run/user/*/textern-*/wekaio.atlassian.net*.txt call s:detect()
au BufReadPost,BufNewFile /tmp/ghost-text*/buffer.txt call s:detect()
