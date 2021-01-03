##doing the scan
#adding loading
forceload add ~ ~ ~143 ~143

#running the 9x9 chunk search loop function
scoreboard players set loops= bse.search.main 0
function bse:search/seek/loop

#removing loading
forceload remove ~ ~ ~143 ~143

##next scan logic
scoreboard players set valid= bse.search.main 0
execute store result score x= bse.search.main run data get entity @s Pos[0]
scoreboard players add x= bse.search.main 144
execute if score x= bse.search.main <= x2= bse.search.main run function bse:large_search/x_step
execute if score valid= bse.search.main matches 0 run function bse:large_search/z_step_check
execute if score valid= bse.search.main matches 1 at @s run function bse:large_search/loop