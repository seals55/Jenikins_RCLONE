# /usr/bin/env bash

# P
base_src_dir="unraid:/mnt/user/P"
base_dest_dir="GoogleSealsTV_Encrypted:/P/P_unraid"
dupe_dir="GoogleSealsTV_Encrypted:/P_dupes/P_unraid"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
