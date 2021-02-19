function ramdisk_up_pg -d "description"
    ramdisk_up
    if not set -Uq RAMDISK_CLUSTER_DIR
        set -U RAMDISK_CLUSTER_DIR "$RAMDISK_MOUNT_DIR/cluster"
        pg_ctl initdb -D $RAMDISK_CLUSTER_DIR
        sleep 2
        pg_ctl start -D $RAMDISK_CLUSTER_DIR --log $RAMDISK_CLUSTER_DIR/log -o '-p 5433'
    end
end
