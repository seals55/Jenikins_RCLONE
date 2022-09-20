# /usr/bin/env bash

# EMUs
base_src_dir="sealsnas5:/EMUs"
base_dest_dir="GoogleSealsTV_Encrypted:/EMUs/All_Emus"
dupe_dir="GoogleSealsTV_Encrypted:/EMU_dupes/All_Emus"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
