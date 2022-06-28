# /usr/bin/env bash

# TV
base_src_dir="sealsnas2:/Videos/TV"
base_dest_dir="GoogleSealsTV_Encrypted:/TV/TV_sealsnas2_local"
dupe_dir="GoogleSealsTV_Encrypted:/TV_dupes/TV_sealsnas2_local"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
