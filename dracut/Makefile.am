SUBDIRS = 89zfs 99zfssystemd

EXTRA_DIST = README.dracut.markdown systemd-escaping.sh.in

dracut_DATA = \
	$(top_srcdir)/dracut/systemd-escaping.sh 

$(dracut_DATA):
	-$(SED) -e 's,@bindir\@,$(bindir),g' \
		-e 's,@sbindir\@,$(sbindir),g' \
		-e 's,@datadir\@,$(datadir),g' \
		-e 's,@dracutdir\@,$(dracutdir),g' \
		-e 's,@udevdir\@,$(udevdir),g' \
		-e 's,@udevruledir\@,$(udevruledir),g' \
		-e 's,@sysconfdir\@,$(sysconfdir),g' \
		'$@.in' >'$@'

clean-local::
	-$(RM) $(dracut_DATA)

distclean-local::
	-$(RM) $(dracut_DATA)
