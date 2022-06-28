# /usr/bin/env bash

# Comics
base_src_dir="tower:/mnt/user/Comics"
base_dest_dir="GoogleSealsTV_Encrypted:/Comics"
dupe_dir="GoogleSealsTV_Encrypted:/Comics_dupes"
rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
