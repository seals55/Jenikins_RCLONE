# /usr/bin/env bash

# Movies
base_src_dir="sealsnas4:/usb1/sync_root/Overflow Movies 1"
base_dest_dir="GoogleSealsTV_Encrypted:/Movies/Movies_sealsnas4_Movie_USB1"
dupe_dir="GoogleSealsTV_Encrypted:/Movies_dupes/Movies_sealsnas4_Movie_USB1"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
