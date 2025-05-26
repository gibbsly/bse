scoreboard players remove z_steps= bse.temp 1

scoreboard players operation x_steps= bse.temp = sx= bse.temp
function bse:search/xcol

execute if score z_steps= bse.temp matches 1.. positioned ~ ~ ~16 run function bse:search/zcol