function ramdisk -d "RAM disk control" -a action size
    if test "$action" = up
        _ramdisk_up $size
    else if test "$action" = down
        _ramdisk_down
    else
        echo "ramdisk: unrecognized option '$action'"
        echo "usage: ramdisk (up|down) [size in MB]"
        return 1
    end
end

function _ramdisk_up -d "Creates and mounts a RAM disk" -a size
    if not set -Uq RAMDISK_DEV
        if test -z $size
            # 512 by default
            set size 512
        end
        set -l RAMDISK_SIZE (math "($size) * 1024*1024/512")

        set -U RAMDISK_DEV (hdid -nomount ram://$RAMDISK_SIZE | string trim)
        newfs_hfs -v 'ramdisk' "$RAMDISK_DEV"
    end
    if not set -Uq RAMDISK_MOUNT_DIR
        set -U RAMDISK_MOUNT_DIR /tmp/ramdisk

        mkdir -p $RAMDISK_MOUNT_DIR
        mount -o noatime -t hfs $RAMDISK_DEV $RAMDISK_MOUNT_DIR
    end
    echo "ramdisk up"
end

function _ramdisk_down -d "Dismounts RAM disk mounted by ramdisk_up"
    if set -Uq RAMDISK_MOUNT_DIR
        umount $RAMDISK_MOUNT_DIR
        rm -rf $RAMDISK_MOUNT_DIR
        set -eU RAMDISK_MOUNT_DIR
    end
    if set -Uq RAMDISK_DEV
        diskutil eject $RAMDISK_DEV
        set -eU RAMDISK_DEV
    end
    echo "ramdisk down"
end
