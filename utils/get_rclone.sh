# /usr/bin/env bash

# get latest rclone

# curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
curl -L -o rclone-current-linux-amd64.zip https://downloads.rclone.org/v1.60.0/rclone-v1.60.0-linux-amd64.zip
unzip rclone-current-linux-amd64.zip

# find downloaded rclone
rclone=$(realpath "$(find . -type f -name rclone)")
mv "${rclone}" "${WORKSPACE}/rclone"
rclone="${WORKSPACE}/rclone"
chmod 755 "${rclone}"

echo "RCLONE path: \"${rclone}\""
echo "RCLONE version:"
"${rclone}" version

echo "RCLONE config path:"
"${rclone}" config file

echo "RCLONE config path:"
"${rclone}" --config="${rclone_config}" config file
