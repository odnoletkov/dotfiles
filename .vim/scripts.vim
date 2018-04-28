if did_filetype()
	finish
endif
if getline(1) =~ '^[\{\[]' && getline("$") =~ '[\}\]]$'
	setfiletype json
endif
