function lfcdn
	set LF_SHELLCD_TEMPDIR (mktemp -d -t lf-shellcd-XXXXXX)
	export LF_SHELLCD_TEMPDIR
	lf -last-dir-path "$LF_SHELLCD_TEMPDIR/lastdir" \
		-command "source '$HOME/.config/lf-shellcd/lfrc-shellcd'" "$argv"
	if [ -e "$LF_SHELLCD_TEMPDIR/changecwd" ] && \
		set dir (cat 
    "$LF_SHELLCD_TEMPDIR/lastdir") 2>/dev/null;
		cd "$dir"
 end
	rm -rf "$LF_SHELLCD_TEMPDIR"
end
