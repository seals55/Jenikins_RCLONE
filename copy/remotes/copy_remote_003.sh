# /usr/bin/env bash

# Movies
base_src_dir="sealsnas2:/usb5/sync_root/Overflow Movies 2"
base_dest_dir="GoogleSealsTV_Encrypted:/Movies/Movies_sealsnas2_usb5_overflow_movies_2"
dupe_dir="GoogleSealsTV_Encrypted:/Movies_dupes/Movies_sealsnas2_usb5_overflow_movies_2"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
