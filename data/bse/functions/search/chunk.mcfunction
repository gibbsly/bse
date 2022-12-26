#forceload handling
execute at @s run scoreboard players set remove_forceload= bse.temp 0
execute at @s unless predicate bse:loaded run function bse:search/load

#checking all subchunks in this chunk
scoreboard players operation y_steps= bse.temp = sy= bse.temp
function bse:search/scl

#removing forceload if flagged to do so
execute if score remove_forceload= bse.temp matches 1 at @s run forceload remove ~ ~