#!/bin/bash

# sync destination with source dir, keep files not present in source, create destination dir if not existing

SOURCE_DIR="mydir/"
DEST_USER="remote_user"
DEST_HOST="remote_hostname"
DEST_DIR="remote_dir"

rsync -avz --ignore-errors --ignore-existing --no-p -e ssh "$SOURCE_DIR" "$DEST_USER@$DEST_HOST:$DEST_DIR"
