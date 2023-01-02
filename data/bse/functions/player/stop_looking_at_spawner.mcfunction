tag @s remove bse.las
tag @s remove bse.tool
title @s actionbar ""

execute if predicate bse:hse if score @s bse.id matches 0.. run function bse:player/pick_block_spawner
execute if predicate bse:hse unless score @s bse.id matches 0.. run item replace entity @s weapon.mainhand with air
scoreboard players reset @s bse.id

execute if score @s bse.temp matches 00 run data merge entity 627365-0-0-0-10 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 01 run data merge entity 627365-0-0-0-11 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 02 run data merge entity 627365-0-0-0-12 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 03 run data merge entity 627365-0-0-0-13 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 04 run data merge entity 627365-0-0-0-14 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 05 run data merge entity 627365-0-0-0-15 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 06 run data merge entity 627365-0-0-0-16 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 07 run data merge entity 627365-0-0-0-17 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 08 run data merge entity 627365-0-0-0-18 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 09 run data merge entity 627365-0-0-0-19 {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 10 run data merge entity 627365-0-0-0-1A {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 11 run data merge entity 627365-0-0-0-1B {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 12 run data merge entity 627365-0-0-0-1C {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 13 run data merge entity 627365-0-0-0-1D {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 14 run data merge entity 627365-0-0-0-1E {Pos:[29999999d,0d,6452069d]}
execute if score @s bse.temp matches 15 run data merge entity 627365-0-0-0-1F {Pos:[29999999d,0d,6452069d]}

scoreboard players reset @s bse.temp