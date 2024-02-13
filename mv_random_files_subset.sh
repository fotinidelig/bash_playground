  GNU nano 4.8                    move_subset_images.sh                               
#!/bin/bash

# Source and destination directories
source_dir="source_img_dir"
destination_dir="dest_img_dir"

# Number of images to move
num_images_to_move=1000

# Ensure the destination directory exists
mkdir -p "$destination_dir"

# Create an array of all image files in the source directory
image_files=("$source_dir"/*.jpg "$source_dir"/*.png)

# Check if there are enough images to move
if [ ${#image_files[@]} -lt $num_images_to_move ]; then
    echo "Error: Not enough images in the source directory."
    exit 1
fi
echo "Number of images in source directory: ${#image_files[@]}"

# Shuffle the array randomly
image_files_shuffled=( $(shuf -e "${image_files[@]}"))

# Move the selected images to the destination directory
for ((i = 0; i < $num_images_to_move; i++)); do
    mv "${image_files_shuffled[$i]}" "$destination_dir"
done

echo "Random subset of $num_images_to_move images moved from $source_dir to $destination_dir"


