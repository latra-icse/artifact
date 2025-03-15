ource and destination directories
src_dir="c_benchmarks"
dest_dir="" # Input destination directory here

for src_subdir in "$src_dir"/*; do
	if [ -d "$src_subdir" ]; then 
		folder_name=$(basename "$src_subdir")
					        
		src_file="$src_subdir/info.properties"
		dest_subdir="$dest_dir/$folder_name"
								        
		cp "$src_file" "$dest_subdir/"
		echo "Copied $src_file to $dest_subdir/"
	else
		echo "Skipping $folder_name: source file or destination folder not found"
	fi
		
done

