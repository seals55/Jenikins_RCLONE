# /usr/bin/env bash

# TV
base_src_dir="tower:/mnt/user/Movies"
base_dest_dir="GoogleSealsTV_Encrypted:/Movies/Movies_tower"
dupe_dir="GoogleSealsTV_Encrypted:/Movies_dupes/Movies_tower"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
