#8 tick timer for spawner location offsets
scoreboard players add 8tt= bse.main 1
execute if score 8tt= bse.main matches 8.. run scoreboard players set 8tt= bse.main 0

execute as @a at @s run function bse:player
execute as @e[type=area_effect_cloud,tag=bse.marker] at @s run function bse:marker/tick