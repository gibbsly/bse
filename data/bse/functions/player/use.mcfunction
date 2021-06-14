execute if predicate bse:has_tool if predicate bse:has_wand run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Error; Use only one tool at a time.","color":"red"}]

execute if predicate bse:has_tool unless predicate bse:has_wand run function bse:use_tool
execute if predicate bse:has_wand unless predicate bse:has_tool run function bse:use_wand

scoreboard players reset @s bse.use