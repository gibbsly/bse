#updating position
data modify storage bse:temp Pos set value [0d,0d,0d]
execute store result storage bse:temp Pos[0] double 1 run data get storage bse:temp positions[0][0]
execute store result storage bse:temp Pos[1] double 1 run data get storage bse:temp positions[0][1]
execute store result storage bse:temp Pos[2] double 1 run data get storage bse:temp positions[0][2]
data modify entity @s Pos set from storage bse:temp Pos

#forceload handling
execute at @s run scoreboard players set remove_forceload= bse.temp 0
execute at @s unless predicate bse:loaded run function bse:util/pa/load

#priming
execute at @s run data modify block ~ ~ ~ Delay set value 0s

#removing forceload if flagged to do so
execute if score remove_forceload= bse.temp matches 1 at @s run forceload remove ~ ~

#displaying progress
scoreboard players add processed= bse.main 1
title @a[gamemode=!survival,gamemode=!adventure] actionbar [{"text":"Priming all spawners ","color":"aqua"},{"score":{"name":"id=","objective":"bse.main"},"color":"aqua"},{"text":" (","color":"gray"},{"score":{"name":"processed=","objective":"bse.main"},"color":"green"},{"text":"/","color":"gray"},{"score":{"name":"total=","objective":"bse.main"},"color":"green"},{"text":")","color":"gray"}]

#looping
data remove storage bse:temp positions[0]
execute if data storage bse:temp positions[0] run function bse:util/pa/loop