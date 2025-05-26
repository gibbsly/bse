tp @s ~ ~ ~
execute store result score max_y= bse.main run data get entity @s Pos[1]
scoreboard players add y_steps= bse.main 1

execute positioned ~ ~16 ~ if predicate bse:loaded run function bse:util/dyl/loop_up