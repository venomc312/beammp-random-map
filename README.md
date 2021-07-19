# BeamMP Random Map - Shell
## The powershell script in this repo can be run with PS7, if you don't know how to do that, than you will need to wait for a newer release.
_this is currently linux only; a Windows version is in the works and will be added to the github repository_

This is a simple shell script that should be used as your startup command (./start.sh).  This script uses tmux as the window manager, so in order to see your server console once it is started you should use tmux attach while logged into the user that the server is running on.

You should place both `start.sh` and `restart.sh` in the root directory of your server, the variables in these scripts should only be changed if you have a reason to do so.

_The scripst should be placed in the root directory, the file locations at the top of the script should be updated to match that of your server's_

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

Once you are done customizing the script, run the command `chmod +x start.sh && chmod +x restart.sh`; this will make the scripts executable, then it's as simple as running `./start.sh` or `./restart.sh`

[BeamMP Forum Link](https://forum.beammp.com/t/random-map-on-startup-linux-shell-script/58869)
