__device_list() {
    find ~/Library/Developer/CoreSimulator/Devices/ -maxdepth 2 -mindepth 2 -name device.plist -exec bash -c 'basename $(dirname {})' \;
} 

__device_info() {
    local device_uuid="$1"
    echo $1
}

