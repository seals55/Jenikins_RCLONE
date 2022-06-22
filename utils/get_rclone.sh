# /usr/bin/env bash

# get latest rclone

# curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
# unzip rclone-current-linux-amd64.zip
curl -O https://github.com/rclone/rclone/releases/download/v1.58.1/rclone-v1.58.1-linux-amd64.zip
unzip rclone-v1.58.1-linux-amd64.zip

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
