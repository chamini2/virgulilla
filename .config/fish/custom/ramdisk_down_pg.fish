function ramdisk_down_pg -d "description"
    if set -Uq RAMDISK_CLUSTER_DIR
        pg_ctl stop -D $RAMDISK_CLUSTER_DIR
        set -eU RAMDISK_CLUSTER_DIR
    end
    ramdisk_down
end
