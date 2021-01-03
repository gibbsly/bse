#adding scoreboard in-case it doesn't exist yet
scoreboard objectives add bse.search.main dummy
scoreboard players set #16 bse.search.main 16

#starting feedback
tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Finding spawners, this may take a moment...","color":"green"}]

#error prevention
schedule function bse:error_prevention/max_command_chain_limit_reached 1t

#init
tag @s add lg
scoreboard players set total= bse.search.main 0
summon minecraft:area_effect_cloud ~ ~ ~ {UUID:[I;6452069,0,0,1],Duration:10,UUIDLeast:1L,UUIDMost:27711425346535424L}

#setting x/z values to be correct 
execute if score x2= bse.search.main < x1= bse.search.main run scoreboard players operation x2= bse.search.main >< x1= bse.search.main
execute if score z2= bse.search.main < z1= bse.search.main run scoreboard players operation z2= bse.search.main >< z1= bse.search.main

#placing marker entity at chunk aligned x1/z1
scoreboard players operation x1= bse.search.main /= #16 bse.search.main
execute store result entity 627365-0-0-0-1 Pos[0] double 1 run scoreboard players operation x1= bse.search.main *= #16 bse.search.main

scoreboard players operation z1= bse.search.main /= #16 bse.search.main
execute store result entity 627365-0-0-0-1 Pos[2] double 1 run scoreboard players operation z1= bse.search.main *= #16 bse.search.main

data modify entity 627365-0-0-0-1 Pos[1] set value 0d

#running search
execute as 627365-0-0-0-1 at @s run function bse:large_search/loop

#backing up spawner list
function bse:backup/create

#error prevention
schedule clear bse:error_prevention/max_command_chain_limit_reached

#ending feedback
tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"translate":"Found %s new spawners","with":[{"score":{"objective":"bse.search.main","name":"total="}}],"color":"green"}]

#termination
kill 627365-0-0-0-1

scoreboard players reset x1= bse.search.main
scoreboard players reset x2= bse.search.main
scoreboard players reset z1= bse.search.main
scoreboard players reset z2= bse.search.main
scoreboard players reset wand_mode= bse.search.main
