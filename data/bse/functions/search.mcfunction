scoreboard players set search= bse.temp 0
execute if data storage bse:search pos1[0] if data storage bse:search pos2[0] run scoreboard players set search= bse.temp 1
execute if score search= bse.temp matches 0 run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Invalid request; unset positions, use a clock to set the selection area ","color":"red"},[{"text":"(","color":"gray"},{"keybind":"key.attack"}," for Pos1, ",{"keybind":"key.use"}," for Pos2)"]]
execute if score search= bse.temp matches 1 run function bse:search/handle_pos