data modify storage bse:main current set value {target_cooldown_length:36000,required_player_range:14,normal_config:{spawn_range:4,total_mobs:6,simultaneous_mobs:2,total_mobs_added_per_player:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40},ominous_config:{spawn_range:4,total_mobs:6,simultaneous_mobs:2,total_mobs_added_per_player:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}
data modify storage bse:main current merge from storage bse:main spawners[{selected:1b}].data

#setting up item object
data remove storage bse:main item
data modify storage bse:main item set value {id:"minecraft:command_block",Count:1b,components:{"minecraft:item_model":"minecraft:trial_spawner","minecraft:enchantment_glint_override":true,"minecraft:block_entity_data":{auto:1b,Command:"function bse:spawner/place",LastExecution:0L,id:"minecraft:command_block"},display:{Name:"",Lore:[]}}}

#grabbing requested id from current
execute store result storage bse:main item.components.minecraft:block_entity_data.LastExecution long 1 run scoreboard players get id= bse.main

#generating name
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"text":"","italic":false},{"text":"Place Trial Spawner","color":"yellow"}," ",{"translate":"[ID: %s]","with":[{"score":{"objective":"bse.main","name":"id="},"color":"gold"}],"color":"gray"}]
data modify storage bse:main item.components.minecraft:item_name set from block 29999999 1 6452069 front_text.messages[0]

##generating general data lore
data modify storage bse:main item.components.minecraft:lore append value [{"text":"General properties:","color":"white","italic":false}]
#ranges

#both configs
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.target_cooldown_length
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.required_player_range
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Cooldown: %s, Player Range: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

#NORMAL CONFIG
#delay and range
data modify storage bse:main item.components.minecraft:lore append value [{"text":"Normal Config:","color":"white","italic":false}]
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.normal_config.ticks_between_spawn
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.normal_config.spawn_range
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Ticks Between Spawns: %s, Spawn Range: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

#mobs
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.normal_config.total_mobs
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.normal_config.total_mobs_added_per_player
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Total Mobs: %s, Per Player Bonus: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.normal_config.simultaneous_mobs
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.normal_config.simultaneous_mobs_added_per_player
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Mobs At Once: %s, Per Player Bonus: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

#OMINOUS CONFIG
#delays
data modify storage bse:main item.components.minecraft:lore append value [{"text":"Ominous Config:","color":"white","italic":false}]
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.ominous_config.ticks_between_spawn
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.ominous_config.spawn_range
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Ticks Between Spawns: %s, Spawn Range: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

#counts
execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.ominous_config.total_mobs
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.ominous_config.total_mobs_added_per_player
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Total Mobs: %s, Per Player Bonus: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

execute store result storage bse:main temps.1 int 1 run data get storage bse:main current.ominous_config.simultaneous_mobs
execute store result storage bse:main temps.2 int 1 run data get storage bse:main current.ominous_config.simultaneous_mobs_added_per_player
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Mobs At Once: %s, Per Player Bonus: %s","color":"gray","italic":false,"with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

##generating spawn potentials lore
data modify storage bse:main item.components.minecraft:lore append value [{"text":"Normal spawnable entities:","color":"white","italic":false}]
data modify storage bse:main spt set value []
data modify storage bse:main spt set from storage bse:main current.normal_config.spawn_potentials
function bse:spawner/give/spawner_lore_trial
data remove storage bse:main temps
data remove storage bse:main spt

data modify storage bse:main item.components.minecraft:lore append value [{"text":"Ominous spawnable entities:","color":"white","italic":false}]
data modify storage bse:main spt set value []
data modify storage bse:main spt set from storage bse:main current.ominous_config.spawn_potentials
function bse:spawner/give/spawner_lore_trial
data remove storage bse:main temps
data remove storage bse:main spt