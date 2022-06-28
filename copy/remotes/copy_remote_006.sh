# /usr/bin/env bash

# Movies
base_src_dir="sealsnas:/share/Videos/Movies"
base_dest_dir="GoogleSealsTV_Encrypted:/Movies/Movies_sealsnas_Movies"
dupe_dir="GoogleSealsTV_Encrypted:/Movies_dupes/Movies_sealsnas_Movies"

rclone_copy "${base_src_dir}" "${base_dest_dir}" "${dupe_dir}"
