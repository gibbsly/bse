tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Finding spawners, this may take a moment...","color":"green"}]
function bse:search/seek
tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"translate":"Found %s spawners","with":[{"score":{"objective":"bse.search.main","name":"total="}}],"color":"green"}]