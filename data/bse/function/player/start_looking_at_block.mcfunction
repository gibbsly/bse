tag @s add bse.las
tag @s add bse.clock

scoreboard players add rcm= bse.main 1
execute if score rcm= bse.main matches 16.. run scoreboard players set rcm= bse.main 0

scoreboard players operation @s bse.temp = rcm= bse.main
execute unless score rcm= bse.main matches 0..15 run tag @s remove bse.las