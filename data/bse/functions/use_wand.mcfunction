#toggling between modes
execute store success score wand_mode= bse.search.main if score wand_mode= bse.search.main matches 0

#finding block
scoreboard players set dist= bse.search.main 0
execute anchored eyes run function bse:use_wand/find_block

execute if score wand_mode= bse.search.main matches 0 store result score x1= bse.search.main run data get entity 627365-0-0-0-1 Pos[0]
execute if score wand_mode= bse.search.main matches 1 store result score x2= bse.search.main run data get entity 627365-0-0-0-1 Pos[0]

execute if score wand_mode= bse.search.main matches 0 store result score z1= bse.search.main run data get entity 627365-0-0-0-1 Pos[2]
execute if score wand_mode= bse.search.main matches 1 store result score z2= bse.search.main run data get entity 627365-0-0-0-1 Pos[2]

#feedback
title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"translate":"Editing selection","color":"green"}]

execute if score wand_mode= bse.search.main matches 0 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"translate":"Updating selection position %s to [%s, %s]","with":[{"text":"1","color":"red"},{"score":{"objective":"bse.search.main","name":"x1="},"color":"g"},{"score":{"objective":"bse.search.main","name":"z1="}}],"color":"green"}]
execute if score wand_mode= bse.search.main matches 1 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"translate":"Updating selection position %s to [%s, %s]","with":[{"text":"2","color":"red"},{"score":{"objective":"bse.search.main","name":"x2="}},{"score":{"objective":"bse.search.main","name":"z2="}}],"color":"green"}]

#revoking advancement
advancement revoke @s only bse:use_wand
kill 627365-0-0-0-1