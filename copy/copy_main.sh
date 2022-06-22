# /usr/bin/env bash

rclone="${WORKSPACE}/rclone"
rclone_path=$(dirname "${rclone}")
export PATH=${rclone_path}:$PATH

# rclone_move() {
#     remote_folder="$1"
#     local_dest_folder="$2"
#     backupdir="$3"
#     backupdir="${backupdir}/dupes_$(date '+%Y-%m-%d-%H_%M_%S')"

#     echo "SRC: '${remote_folder}'"
#     echo "DST: '${local_dest_folder}'"
#     echo "BACKUPDIR: '${backupdir}'"

#     rclone --config=\"${rclone_config}\" move \
#         --progress \
#         --exclude "**/@eaDir/**" \
#         --exclude "**/@SynoResource/**" \
#         --exclude "*@eaDir*" \
#         --exclude "*@SynoResource*" \
#         --exclude ".*" \
#         --transfers=8 \
#         --retries 1 \
#         --backup-dir "${backupdir}" \
#         "${remote_folder}" \
#         "${local_dest_folder}"
# }

# rclone_sync() {
#     remote_folder="$1"
#     local_dest_folder="$2"

#     echo "SRC: '${remote_folder}'"
#     echo "DST: '${local_dest_folder}'"

#     rclone --config="${rclone_config}" sync \
#         --progress \
#         --exclude '**/@eaDir/**' \
#         --exclude '**/@SynoResource/**' \
#         --exclude '*@eaDir*' \
#         --exclude '*@SynoResource*' \
#         --exclude 'nzbget.log' \
#         --exclude '.*' \
#         --transfers=8 \
#         --retries 1 \
#         --dry-run \
#         "${remote_folder}" \
#         "${local_dest_folder}"
# }

rclone_copy() {
    remote_folder="$1"
    local_dest_folder="$2"

    echo "SRC: '${remote_folder}'"
    echo "DST: '${local_dest_folder}'"

    # rclone --config="${rclone_config}" copy \
    #     --progress \
    #     --exclude '**/@eaDir/**' \
    #     --exclude '**/@SynoResource/**' \
    #     --exclude '*@eaDir*' \
    #     --exclude '*@SynoResource*' \
    #     --exclude 'nzbget.log' \
    #     --exclude '.*' \
    #     --transfers=8 \
    #     --retries 1 \
    #     --dry-run \
    #     -v \
    #     "${remote_folder}" \
    #     "${local_dest_folder}"
    rclone --config "${rclone_config}" \
        copy \
        --exclude '**/@eaDir/**' \
        --exclude '**/@SynoResource/**' \
        --exclude '*@eaDir*' \
        --exclude '*@SynoResource*' \
        --exclude 'nzbget.log' \
        --exclude '.*' \
        --transfers 8 \
        --retries 3 \
        --bwlimit 8.68M \
        --dry-run \
        --stats=1m \
        --stats-one-line-date \
        -v \
        "${remote_folder}" \
        "${local_dest_folder}"
}

cd "${rclone_path}/copy/remotes"

for f in *; do
    echo "Calling File: ${f}"
    echo "-----------------------------"
    . "${rclone_path}/copy/remotes/${f}"
done

cd "${rclone_path}/"
