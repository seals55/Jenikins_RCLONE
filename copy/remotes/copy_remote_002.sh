# /usr/bin/env bash

# Extras
base_src_dir="unraid:/mnt/user/Extras"
base_dest_dir="GoogleSealsTV_Encrypted:/EXTRAS/Extras_unraid"
dupe_dir="GoogleSealsTV_Encrypted:/EXTRAS_dupes/Extras_unraid"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
