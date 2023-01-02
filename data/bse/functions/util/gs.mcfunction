function bse:util/si
data modify storage bse:main current set from storage bse:main spawners[{selected:1b}].data

#setting up item object
data remove storage bse:main item
data modify storage bse:main item set value {id:"minecraft:command_block",Count:1b,tag:{BlockEntityTag:{auto:1b,Command:"function bse:spawner/place",LastExecution:0L},display:{Name:"",Lore:[]}}}

#grabbing requested id from current
execute store result storage bse:main item.tag.BlockEntityTag.LastExecution long 1 run scoreboard players get id= bse.main

#generating name
data modify block 29999999 1 6452069 Text1 set value '[{"text":"","italic":false},{"text":"Place Spawner","color":"yellow"}," ",{"translate":"[ID: %s]","with":[{"score":{"objective":"bse.main","name":"id="},"color":"gold"}],"color":"gray"}]'
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

##generating spawn potentials lore
data modify storage bse:main spt set value []
data modify storage bse:main spt set from storage bse:main current.SpawnPotentials
execute unless data storage bse:main spt[0] run data modify storage bse:main spt[].data set from storage bse:main current.SpawnData
function bse:spawner/give/spawner_lore
data remove storage bse:main temps
data remove storage bse:main spt