#this function generates an item based on the data in storage bse:main current

#setting up item object
data modify storage bse:main item set value {id:"minecraft:command_block",Count:1b,tag:{BlockEntityTag:{auto:1b,Command:"function bse:util/place_spawner",LastExecution:0L},display:{Name:"",Lore:[]}}}

#grabbing requested id from current
execute store result score requested_id= bse.main run data get storage bse:main current.SpawnerID
execute store result storage bse:main item.tag.BlockEntityTag.LastExecution long 1 run scoreboard players get requested_id= bse.main

#generating name
data modify block 29999999 1 6452069 Text1 set value '[{"text":"","italic":false},{"text":"Place Spawner","color":"yellow"}," ",{"translate":"[ID: %s]","with":[{"score":{"objective":"bse.main","name":"requested_id="},"color":"gold"}],"color":"gray"}]'
data modify storage bse:main item.tag.display.Name set from block 29999999 1 6452069 Text1

##generating general data lore
data modify storage bse:main item.tag.display.Lore append value '[{"text":"General properties:","color":"white","italic":false}]'
#ranges
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.RequiredPlayerRange
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.SpawnRange
data modify block 29999999 1 6452069 Text1 set value '[{"translate":" Player Range: %s, Spawn Range: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]'
data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 Text1

#delays
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.MaxSpawnDelay
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.MinSpawnDelay
data modify block 29999999 1 6452069 Text1 set value '[{"translate":" Max Delay: %s, Min Delay: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]'
data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 Text1

#counts
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.MaxNearbyEntities
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.SpawnCount
data modify block 29999999 1 6452069 Text1 set value '[{"translate":" Max Nearby: %s, Count: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]'
data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 Text1
data modify storage bse:main item.tag.display.Lore append value '[{"text":"List of spawnable entities:","color":"white","italic":false}]'
data remove storage bse:main temps

##generating spawn potentials lore
data modify storage bse:main spt set from storage bse:main current.SpawnPotentials
function bse:util/spawner_lore
data remove storage bse:main spt

#summoning item
execute at @s run summon item ~ ~ ~ {Tags:[bse.item.new],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,tag=bse.item.new,limit=1] run data modify entity @s Item set from storage bse:main item
tag @e[type=item,tag=bse.item.new,limit=1] remove bse.item.new
data remove storage bse:main item