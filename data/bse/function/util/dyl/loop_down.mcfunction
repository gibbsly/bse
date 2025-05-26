tp @s ~ ~ ~
execute store result score min_y= bse.main run data get entity @s Pos[1]

execute positioned ~ ~-16 ~ store result score go_down= bse.temp if predicate bse:loaded

execute if score go_down= bse.temp matches 0 run scoreboard players set y_steps= bse.main 0
execute if score go_down= bse.temp matches 0 run function bse:util/dyl/loop_up
execute if score go_down= bse.temp matches 1 positioned ~ ~-16 ~ run function bse:util/dyl/loop_down