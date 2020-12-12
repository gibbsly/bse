#feedback particle
particle flash

#determining weather to create a new spawner, update a current one, or give selected one
scoreboard players set stick_use= bse.main 0
execute if entity @e[type=minecraft:area_effect_cloud,tag=bse.spawner,distance=..0.25] run scoreboard players set stick_use= bse.main 2
execute if score stick_use= bse.main matches 2 if predicate bse:alt run scoreboard players set stick_use= bse.main 1

#running create/update/give
execute if score stick_use= bse.main matches 0 run function bse:use_tool/create_new
execute if score stick_use= bse.main matches 1 run function bse:use_tool/update_existing
execute if score stick_use= bse.main matches 2 if entity @s[type=player] run function bse:use_tool/give_existing
