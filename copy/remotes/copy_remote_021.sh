# /usr/bin/env bash

# P
base_src_dir="tower:/mnt/user/P"
base_dest_dir="GoogleSealsTV_Encrypted:/P/P_tower"
dupe_dir="GoogleSealsTV_Encrypted:/P_dupes/P_tower"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
