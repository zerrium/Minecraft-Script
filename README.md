# Minecraft-Script
A Minecraft Server Script for Linux Server

## How it works:
### Starting server script:
This script is useful if you have more than one server instances<br>
This script will prompt which server you want to start<br>
It list the server instances by checking if the folder contains start.sh or not<br>

Inside the Server_Instance folder, the start.sh contains starting server script but starts in deattached screen

### Backup script:
Similar to starting server script but it detects if it contains backup.sh instead

Inside the Server_Instance folder, the backup.sh contains script to compress world folder using 7zip highest compression<br>
Then, moving the zip to Backup folder and finally prints out disk health report
