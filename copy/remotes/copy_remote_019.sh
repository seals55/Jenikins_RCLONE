# /usr/bin/env bash

# TV
base_src_dir="tower:/mnt/user/TV"
base_dest_dir="GoogleSealsTV_Encrypted:/TV/TV_tower"
dupe_dir="GoogleSealsTV_Encrypted:/TV_dupes/TV_tower"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
