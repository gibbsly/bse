#getting selected spawner id
scoreboard players operation requested_id= bse.main = @s bse.request
scoreboard players operation edited_id= bse.main = requested_id= bse.main

#scrolling to requested id
execute unless score requested_id= bse.main matches ..0 run function bse:util/scroll_to_requested_id

#updating value
data modify storage bse:main current set from storage bse:main spawners[0]

#restoring spawner array
data modify storage bse:main spawners prepend from storage bse:main back[]
data modify storage bse:main back set value []

#giving current spawner
scoreboard players operation requested_id= bse.main = edited_id= bse.main
function bse:util/give_spawner

tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"translate":"Giving you the spawner with the ID %s","with":[{"score":{"objective":"bse.main","name":"requested_id="}}],"color":"green"}]