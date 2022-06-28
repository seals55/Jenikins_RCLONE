# /usr/bin/env bash

# Extras
base_src_dir="sealsnas5:/Extras"
base_dest_dir="GoogleSealsTV_Encrypted:/EXTRAS/Extras_sealsnas5"
dupe_dir="GoogleSealsTV_Encrypted:/EXTRAS_dupes/Extras_sealsnas5"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
