#adding selected spawner to current and removing extraneous data
data modify storage bse:main current set from block ~ ~ ~
data remove storage bse:main current.x
data remove storage bse:main current.y
data remove storage bse:main current.z
data remove storage bse:main current.id
data remove storage bse:main current.Delay

#searching for duplicate values
execute if data storage bse:main spawners[0] run function bse:util/find_dupe

#adding current to list if no duplicates are found
execute if score stick_use= bse.main matches 0 run function bse:util/add_current_to_list

#summong aec
execute store result score requested_id= bse.main run data get storage bse:main current.SpawnerID
data modify block 29999999 1 6452069 Text1 set value '{"translate":"Spawner ID: %s","with":[{"score":{"objective":"bse.main","name":"requested_id="}}],"color":"aqua"}'
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[bse.spawner,bse.spawner.new],Duration:100,CustomName:'"a"'}
execute as @e[type=minecraft:area_effect_cloud,tag=bse.spawner.new,limit=1] at @s run function bse:use_tool/new_marker

#giving current spawner
execute if score stick_use= bse.main matches 0 at @s run function bse:util/give_spawner

#feedback if run in a command block
execute unless entity @s run tellraw @a ["",{"text":"[BSE]:","color":"yellow","bold":true}," Found a spawner at ",{"translate":"[%s, %s, %s]","color":"green","with":[{"nbt":"x","block":"~ ~ ~"},{"nbt":"y","block":"~ ~ ~"},{"nbt":"z","block":"~ ~ ~"}]},", registering to ID ",{"score":{"objective":"bse.main","name":"requested_id="},"color":"gold"}]