scoreboard players remove y_steps= bse.temp 1

function bse:search/subchunk

scoreboard players add chunk= bse.main 1
title @a[gamemode=!survival,gamemode=!adventure] actionbar [{"text":"Searching selected chunks for spawners... ","color":"aqua"},[{"text":"(","color":"gray"},{"score":{"name":"chunk=","objective":"bse.main"},"color":"gray"},"/",{"score":{"name":"total_chunks=","objective":"bse.main"},"color":"gray"},") "],"Spawners Found: ",{"score":{"name":"found=","objective":"bse.main"},"color":"green"}]

execute if score y_steps= bse.temp matches 1.. positioned ~ ~16 ~ run function bse:search/scl