# /usr/bin/env bash

# Movies
base_src_dir="unraid:/mnt/user/Movies"
base_dest_dir="GoogleSealsTV_Encrypted:/Movies/Movies_unraid_movies"
dupe_dir="GoogleSealsTV_Encrypted:/Movies_dupes/Movies_unraid_movies"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
