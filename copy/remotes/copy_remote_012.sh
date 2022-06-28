# /usr/bin/env bash

# TV
base_src_dir="sealsnas3:/TV_NAS3"
base_dest_dir="GoogleSealsTV_Encrypted:/TV/TV_sealsnas3_TV_NAS3"
dupe_dir="GoogleSealsTV_Encrypted:/TV_dupes/TV_sealsnas3_TV_NAS3"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
