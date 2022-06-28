# /usr/bin/env bash

# TV
base_src_dir="sealsnas2:/usb9/sync_root/tv"
base_dest_dir="GoogleSealsTV_Encrypted:/TV/TV_sealsnas2_USB9"
dupe_dir="GoogleSealsTV_Encrypted:/TV_dupes/TV_sealsnas2_USB9"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
