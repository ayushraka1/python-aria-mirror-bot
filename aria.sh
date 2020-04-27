export MAX_DOWNLOAD_SPEED=0
export MAX_CONCURRENT_DOWNLOADS=8
aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port 6800 \
  --max-connection-per-server=10 --rpc-max-request-size=1024G \
  --seed-time=86400.00 --min-split-size=10M --follow-torrent=mem --split=10 \
   --daemon=true --allow-overwrite=true --max-overall-download-limit=$MAX_DOWNLOAD_SPEED \
   --max-overall-upload-limit=9999G --max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS
