# BeamMP Random Map - Shell
_this is currently linux only; a Windows version is in the works and will be added to the github repository_

This is a simple shell script that should be used as your startup command (./start.sh).  This script uses tmux as the window manager, so in order to see your server console once it is started you should use tmux attach while logged into the user that the server is running on.

_The script should be placed in the root directory, the file locations at the top of the script should be updated to match that of your server's_

This chooses a random map on startup, to add maps please see below.

Here is the default map list
```json
array[0]="/levels/gridmap_v2/info.json"
array[1]="/levels/utah/info.json"
```

Here is the list with one added
```json
array[0]="/levels/gridmap_v2/info.json"
array[1]="/levels/utah/info.json"
array[2]="/levels/sandy_mountain/info.json|
```

[BeamMP Forum Link](https://forum.beammp.com/t/random-map-on-startup-linux-shell-script/58869)
