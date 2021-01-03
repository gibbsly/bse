#adding selected spawner to current and removing extraneous data
data modify storage bse:main current set from block ~ ~ ~
data remove storage bse:main current.x
data remove storage bse:main current.y
data remove storage bse:main current.z
data remove storage bse:main current.id
data remove storage bse:main current.Delay

#getting selected spawner id
scoreboard players operation requested_id= bse.main = @e[type=minecraft:area_effect_cloud,tag=bse.spawner,distance=..0.25,sort=nearest,limit=1] bse.id
scoreboard players operation edited_id= bse.main = requested_id= bse.main
data modify storage bse:main current.SpawnerID set value 0
execute store result storage bse:main current.SpawnerID int 1 run scoreboard players get edited_id= bse.main

#scrolling to requested id
execute unless score requested_id= bse.main matches ..0 run function bse:util/scroll_to_requested_id

#updating value
data modify storage bse:main spawners[0] set from storage bse:main current

#restoring spawner array
data modify storage bse:main spawners prepend from storage bse:main back[]
data modify storage bse:main back set value []
scoreboard players add current_version= bse.main 1

#giving current spawner
function bse:util/give_spawner