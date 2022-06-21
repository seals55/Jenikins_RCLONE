# /usr/bin/env bash

rclone="${WORKSPACE}/rclone"
rclone_path=$(dirname "${rclone}")
export PATH=${rclone_path}:$PATH

rclone_move() {
    remote_folder="$1"
    local_dest_folder="$2"
    backupdir="$3"
    backupdir="${backupdir}/dupes_$(date '+%Y-%m-%d-%H_%M_%S')"

    echo "SRC: '${remote_folder}'"
    echo "DST: '${local_dest_folder}'"
    echo "BACKUPDIR: '${backupdir}'"

    rclone --config="${rclone_config}" move \
        --progress \
        --exclude "**/@eaDir/**" \
        --exclude "**/@SynoResource/**" \
        --exclude "*@eaDir*" \
        --exclude "*@SynoResource*" \
        --exclude ".*" \
        --transfers=8 \
        --retries 1 \
        --backup-dir "${backupdir}" \
        "${remote_folder}" \
        "${local_dest_folder}"
}

rclone_sync() {
    remote_folder="$1"
    local_dest_folder="$2"

    echo "SRC: '${remote_folder}'"
    echo "DST: '${local_dest_folder}'"

    cmd="rclone --config='${rclone_config}' sync"
    cmd="$cmd --progress"
    cmd="$cmd --exclude '**/@eaDir/**'"
    cmd="$cmd --exclude '**/@SynoResource/**'"
    cmd="$cmd --exclude '*@eaDir*'"
    cmd="$cmd --exclude '*@SynoResource*'"
    cmd="$cmd --exclude 'nzbget.log'"
    cmd="$cmd --exclude '.*'"
    cmd="$cmd --transfers=8"
    cmd="$cmd --retries 1"
    cmd="$cmd --dry-run"
    cmd="$cmd '${remote_folder}'"
    cmd="$cmd '${local_dest_folder}'"

    echo "Running: '${cmd}'"
    $cmd
}

rclone_copy() {
    remote_folder="$1"
    local_dest_folder="$2"

    echo "SRC: '${remote_folder}'"
    echo "DST: '${local_dest_folder}'"

    cmd="rclone --config='${rclone_config}' copy"
    cmd="$cmd --progress"
    cmd="$cmd --exclude '**/@eaDir/**'"
    cmd="$cmd --exclude '**/@SynoResource/**'"
    cmd="$cmd --exclude '*@eaDir*'"
    cmd="$cmd --exclude '*@SynoResource*'"
    cmd="$cmd --exclude 'nzbget.log'"
    cmd="$cmd --exclude '.*'"
    cmd="$cmd --transfers=8"
    cmd="$cmd --retries 1"
    cmd="$cmd --dry-run"
    cmd="$cmd '${remote_folder}'"
    cmd="$cmd '${local_dest_folder}'"

    echo "Running: '${cmd}'"
    $cmd
}

rsync_sync() {

    remote_folder="$1"
    local_dest_folder="$2"

    echo "SRC: '${remote_folder}'"
    echo "DST: '${local_dest_folder}'"

    rsync \
        --archive \
        --one-file-system \
        --exclude '@eaDir' \
        --exclude '@SynoResource' \
        --exclude 'nzbget.log' \
        --exclude 'docker_lib' \
        --include '.*' \
        '--rsh=ssh -i /root/.ssh/id_rsa' \
        --partial \
        --append-verify \
        --progress \
        --delete-excluded \
        --copy-links \
        ${remote_folder} \
        ${local_dest_folder} #| grep -E -v '/$'
}

local_move() {

    src="$1"
    dest="$2"

    echo "SRC: '${src}'"
    echo "DST: '${dest}'"

    src=$(readlink -f "$src")
    dest=$(readlink -f "$dest")

    pushd "$src"

    # also copy hidden files
    shopt -s dotglob

    # make dirs (missing old permission,acl,xattr data), and then mv the files
    time find * -type d -exec mkdir -p "$dest"/{} \;
    time find * -type f -exec mv -n {} "$dest"/{} \;

    # also copy permissions, acls, xattrs
    rsync -aAX "$src"/ "$dest"/

    popd
}

clean_dirs() {
    if [ -d "$1" ]; then
        find "$1" -type l -print -not -path "*_UNPACK_*" | xargs -d '\n' rm -f
        find "$1" -type d -print -not -path "*_UNPACK_*" | sort -r | xargs -d '\n' rmdir -p --ignore-fail-on-non-empty 2>/dev/null
        sudo find "$1" -type d -empty -delete
    fi
}

# Extras
rclone_copy "sealsnas5:/Extras" "GoogleSealsTV_Encrypted:/EXTRAS/Extras_sealsnas5"
