#scroll through each spawner, if a spawner location either doesn't have a spawner or has a non-matching id number spawner it removes this location from the list, this requires keeping the spawners scanned through and only copying matching spawners into the processed array

#at every location, check if loaded, if not run forceload, always query if current location is marked to be forceloaded, if it is don't un-forceload it when you move to the next location

#to update spawner setblock air then spawner then merge new data in
##################

#updating position
data modify storage bse:temp Pos set value [0d,0d,0d]
execute store result storage bse:temp Pos[0] double 1 run data get storage bse:temp positions[0][0]
execute store result storage bse:temp Pos[1] double 1 run data get storage bse:temp positions[0][1]
execute store result storage bse:temp Pos[2] double 1 run data get storage bse:temp positions[0][2]
data modify entity @s Pos set from storage bse:temp Pos

#forceload handling
scoreboard players set remove_forceload= bse.temp 0
execute unless predicate bse:loaded run function bse:util/us/load

#init move to processed flag
scoreboard players set mtp= bse.temp 0

#checking if this spawner needs to be updated
scoreboard players set update= bse.temp 0
execute if block ~ ~ ~ spawner if data block ~ ~ ~ SpawnData.entity."bse:id" run function bse:util/us/verify_id

#updating if flagged to do so
execute if score update= bse.temp matches 1 run function bse:util/us/update

#removing forceload if flagged to do so
execute if score remove_forceload= bse.temp matches 1 run forceload remove ~ ~

#displaying progress
scoreboard players add processed= bse.main 1
title @a[gamemode=!survival,gamemode=!adventure] actionbar [{"text":"Updating all spawners with the ID ","color":"aqua"},{"score":{"name":"id=","objective":"bse.main"},"color":"aqua"},{"text":" (","color":"gray"},{"score":{"name":"processed=","objective":"bse.main"},"color":"green"},{"text":"/","color":"gray"},{"score":{"name":"total=","objective":"bse.main"},"color":"green"},{"text":")","color":"gray"}]

#moving to processed if flagged to do so
execute if score mtp= bse.temp matches 1 run data modify storage bse:temp processed append from storage bse:temp positions[0]

#looping
data remove storage bse:temp positions[0]
execute if data storage bse:temp positions[0] run function bse:util/us/loop