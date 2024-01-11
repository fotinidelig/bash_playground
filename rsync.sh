#!/bin/bash

SOURCE_DIR="mydir/"
DEST_USER="remote_user"
DEST_HOST="remote_hostname"
DEST_DIR="remote_dir"

rsync -avz --no-p -e ssh "$SOURCE_DIR" "$DEST_USER@$DEST_HOST:$DEST_DIR"
