exp:
	musl-gcc exp.c -o exp --static -Os
	strip -s exp
	find . | cpio -H newc -ov -F ../rootfs.cpio
	rm exp
