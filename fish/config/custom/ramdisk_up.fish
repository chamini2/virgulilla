function ramdisk_up -d "Creates and mounts a RAM disk"
  if not set -Uq RAMDISK_MOUNT_DIR RAMDISK_DEV
    set -l RAMDISK_SIZE (math '(512) * 1024*1024/512')    # 512M
    echo "ramdisk size '$RAMDISK_SIZE'"

    set -U RAMDISK_MOUNT_DIR /tmp/ramdisk
    set -U RAMDISK_DEV (hdid -nomount ram://$RAMDISK_SIZE | string trim)

    newfs_hfs -v 'ramdisk' "$RAMDISK_DEV"
    mkdir -p $RAMDISK_MOUNT_DIR
    mount -o noatime -t hfs $RAMDISK_DEV $RAMDISK_MOUNT_DIR
  end
  echo "ramdisk up"
end
