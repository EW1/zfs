pkgdracutdir = $(dracutdir)/modules.d/89zfs
pkgdracut_SCRIPTS = \
	$(top_srcdir)/dracut/89zfs/module-setup.sh \
	$(top_srcdir)/dracut/89zfs/mount-zfs.sh \
	$(top_srcdir)/dracut/89zfs/export-zfs.sh \
	$(top_srcdir)/dracut/89zfs/parse-zfs.sh

EXTRA_DIST = \
	$(top_srcdir)/dracut/89zfs/module-setup.sh.in \
	$(top_srcdir)/dracut/89zfs/mount-zfs.sh.in \
	$(top_srcdir)/dracut/89zfs/export-zfs.sh.in \
	$(top_srcdir)/dracut/89zfs/parse-zfs.sh.in

$(pkgdracut_SCRIPTS):
	-$(SED) -e 's,@bindir\@,$(bindir),g' \
		-e 's,@sbindir\@,$(sbindir),g' \
		-e 's,@datadir\@,$(datadir),g' \
		-e 's,@dracutdir\@,$(dracutdir),g' \
		-e 's,@udevdir\@,$(udevdir),g' \
		-e 's,@udevruledir\@,$(udevruledir),g' \
		-e 's,@sysconfdir\@,$(sysconfdir),g' \
		'$@.in' >'$@'

clean-local::
	-$(RM) $(pkgdracut_SCRIPTS)

distclean-local::
	-$(RM) $(pkgdracut_SCRIPTS)
