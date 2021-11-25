function lfcd
	set LF_SHELLCD_TEMPDIR '(mktemp -d -t 
  lf-shellcd-XXXXXX)'
	export LF_SHELLCD_TEMPDIR
	lf -last-dir-path "$LF_SHELLCD_TEMPDIR/lastdir" 
	if [ -e "$LF_SHELLCD_TEMPDIR/changecwd" ] && \
		set dir "(cat 
    "$LF_SHELLCD_TEMPDIR/lastdir")" 2>/dev/null; then
		cd "$dir"
	fi
	rm -rf "$LF_SHELLCD_TEMPDIR"
	unset LF_SHELLCD_TEMPDIR
end
