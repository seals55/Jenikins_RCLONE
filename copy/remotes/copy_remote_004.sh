# /usr/bin/env bash

# Movies
base_src_dir="sealsnas4:/Movie_NAS4"
base_dest_dir="GoogleSealsTV_Encrypted:/Movies/Movies_sealsnas4_Movie_NAS4"
dupe_dir="GoogleSealsTV_Encrypted:/Movies_dupes/Movies_sealsnas4_Movie_NAS4"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
