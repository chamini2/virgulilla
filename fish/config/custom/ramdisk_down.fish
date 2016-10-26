function ramdisk_down -d "Dismounts RAM disk mounted by ramdisk_up"
  if set -Uq RAMDISK_MOUNT_DIR RAMDISK_DEV
    umount $RAMDISK_MOUNT_DIR
    diskutil eject $RAMDISK_DEV
    rm -rf $RAMDISK_MOUNT_DIR

    set -eU RAMDISK_MOUNT_DIR
    set -eU RAMDISK_DEV
  end
  echo "ramdisk down"
end
