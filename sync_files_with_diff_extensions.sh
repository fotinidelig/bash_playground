### Result: folder_a and folder_b have files of same name but two different extensions.
### Application: syncing data (eg .png) and labels (eg .txt).
#!/bin/bash

extension_a = ".jpg"
folder_a = "images/"

extension_b = ".txt"
folder_b = "labels/"

for file in "$folder_a/*$extension_a"; do
    rawfile=$(basename "$file" "$extension_a")
    if [ ! -f "$folder_b/$rawfile$extension_b" ]; then
        rm "$file"
        echo "removed file $file"
    fi
done
