scoreboard players add dist= bse.main 1
execute if block ~ ~ ~ minecraft:spawner align xyz positioned ~0.5 ~0.5 ~0.5 run function bse:use_tool/found_spawner
execute unless score dist= bse.main matches 500.. unless block ~ ~ ~ minecraft:spawner positioned ^ ^ ^0.01 run function bse:use_tool/find_spawner