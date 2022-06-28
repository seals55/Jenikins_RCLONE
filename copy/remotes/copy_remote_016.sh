# /usr/bin/env bash

# Magazines
base_src_dir="tower:/mnt/user/Magazines"
base_dest_dir="GoogleSealsTV_Encrypted:/Magazines"
dupe_dir="GoogleSealsTV_Encrypted:/Magazines_dupes"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
