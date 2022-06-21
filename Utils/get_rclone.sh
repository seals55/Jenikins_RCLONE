# /usr/bin/env bash

# get latest rclone
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip

# find downloaded rclone
rclone=$(realpath "$(find . -type f -name rclone)")
chmod 755 "${rclone}"

echo "RCLONE path: \"${rclone}\""
echo "RCLONE version:"
"${rclone}" version

echo "RCLONE config path:"
"${rclone}" config file
