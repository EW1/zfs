case "$root" in
    zfs:FILESYSTEM=*|FILESYSTEM=*)
	root="${root#zfs:}"
	root="zfs:${root#FILESYSTEM=}"
        rootfs="zfs"
        rootok=1 ;;
    zfs:ZFS=*|ZFS=*)
	root="${root#zfs:}"
	root="zfs:${root#ZFS=}"
        rootfs="zfs"
        rootok=1 ;;
esac

if [ "$rootok" != "1" ] ; then
	zpool import -aN
	zfsbootfs=`zpool list -H -o bootfs | grep -v ^-$ -m 1`
	if [ -n "$zfsbootfs" ] ; then
		root="zfs:$zfsbootfs"
		rootfs="zfs"
		rootok=1
	fi
	zpool list -H | while read fs rest ; do zpool export "$fs" ; done
fi
