rclone serve webdav --vfs-cache-mode writes --addr :80 drive: --buffer-size 250M --vfs-read-chunk-size 256M --ignore-size --ignore-checksum --update & 
rclone serve webdav --vfs-cache-mode writes --addr :81 drive1: --buffer-size 250M --vfs-read-chunk-size 256M --ignore-size --ignore-checksum --update & 
rclone serve webdav --vfs-cache-mode writes --addr :82 drive2: --buffer-size 250M --vfs-read-chunk-size 256M --ignore-size --ignore-checksum --update & 
rclone serve webdav --vfs-cache-mode writes --addr :83 drive3: --buffer-size 250M --vfs-read-chunk-size 256M --ignore-size --ignore-checksum --update
