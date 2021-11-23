#! /bin/bash
filename="server_`date +"%Y-%m-%d--%H%M"`_$1.7z"
7z a -mx9 -t7z $filename world
sudo chown $USER $filename
mv $filename /home/zerrium/Backup
sudo smartctl --all /dev/nvme0
