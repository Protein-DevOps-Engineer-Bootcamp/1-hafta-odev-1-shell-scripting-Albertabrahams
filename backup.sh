#!/bin/bash

source ./backup.conf

DATE=$(date "+F-%H-%M-%S")
USERNAME="$username"
person="$USER"

ARCHIVE_FILE="${person}_${DATE}.tar.gz"

tar -zcf $TARGET_DIR/$ARCHIVE_FILE $MAIN_DIRS

# loading process is done

md5sum $TARGET_DIR/$ARCHIVE_FILE > $TARGET_DIR/$ARCHIVE_FILE.md5.txt

mv $TARGET_DIR/$ARCHIVE_FILE.md5.txt $TARGET_DIR

# Enciphering is done