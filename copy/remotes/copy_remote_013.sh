# /usr/bin/env bash

# TV
base_src_dir="sealsnas5:/usb2/TV"
base_dest_dir="GoogleSealsTV_Encrypted:/TV/TV_sealsnas5_USB1_TV"
dupe_dir="GoogleSealsTV_Encrypted:/TV_dupes/TV_sealsnas5_USB1_TV"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
