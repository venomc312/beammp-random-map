$CfgLoc="D:\Downloads\bmpserv\ServerConfig.toml" # This is your configuration location
$ServerBinary="D:\Downloads\bmpserv\BeamMP-Server.exe" # This is your server binary location
$MapList=’/levels/gridmap_v2/info.json’,’/levels/utah/info.json’ # Add your maps with a comma here

# Gets a random map from the MapList table
$Map=Get-Random -InputObject $MapList
# Finds and selects the Map object in the config
$line = Get-Content $CfgLoc | Select-String "Map" | Select-Object -ExpandProperty Line
# Gets the content of the whole file
$content = Get-Content $CfgLoc
# Sets the content with the updated Map String
$content | ForEach-Object {$_ -replace $line,"Map = ""$Map"""} | Set-Content $CfgLoc

# Starts the server
& $ServerBinary