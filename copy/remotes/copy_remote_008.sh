# /usr/bin/env bash

# P
base_src_dir="sealsnas5:/P"
base_dest_dir="GoogleSealsTV_Encrypted:/P/P_sealsnas5"
dupe_dir="GoogleSealsTV_Encrypted:/P_dupes/P_sealsnas5"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
