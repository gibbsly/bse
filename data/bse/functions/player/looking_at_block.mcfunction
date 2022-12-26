particle bubble ~0.5 ~0.5 ~0.5 0 0 0 0 1 normal @s
particle bubble ~-0.5 ~0.5 ~0.5 0 0 0 0 1 normal @s
particle bubble ~0.5 ~0.5 ~-0.5 0 0 0 0 1 normal @s
particle bubble ~-0.5 ~0.5 ~-0.5 0 0 0 0 1 normal @s
particle bubble ~0.5 ~-0.5 ~0.5 0 0 0 0 1 normal @s
particle bubble ~-0.5 ~-0.5 ~0.5 0 0 0 0 1 normal @s
particle bubble ~0.5 ~-0.5 ~-0.5 0 0 0 0 1 normal @s
particle bubble ~-0.5 ~-0.5 ~-0.5 0 0 0 0 1 normal @s

kill 627365-0-0-0-1

execute unless entity @s[tag=bse.las] run function bse:player/start_looking_at_block

title @s actionbar [{"text":"","color":"gray"},{"keybind":"key.attack","color":"aqua"},{"text":" to set position 1","color":"aqua"}," | ",{"keybind":"key.use","color":"aqua"},{"text":" to set position 2","color":"aqua"}]

execute if score @s bse.temp matches 00 run tp 627365-0-0-0-10 ~ ~-0.75 ~
execute if score @s bse.temp matches 01 run tp 627365-0-0-0-11 ~ ~-0.75 ~
execute if score @s bse.temp matches 02 run tp 627365-0-0-0-12 ~ ~-0.75 ~
execute if score @s bse.temp matches 03 run tp 627365-0-0-0-13 ~ ~-0.75 ~
execute if score @s bse.temp matches 04 run tp 627365-0-0-0-14 ~ ~-0.75 ~
execute if score @s bse.temp matches 05 run tp 627365-0-0-0-15 ~ ~-0.75 ~
execute if score @s bse.temp matches 06 run tp 627365-0-0-0-16 ~ ~-0.75 ~
execute if score @s bse.temp matches 07 run tp 627365-0-0-0-17 ~ ~-0.75 ~
execute if score @s bse.temp matches 08 run tp 627365-0-0-0-18 ~ ~-0.75 ~
execute if score @s bse.temp matches 09 run tp 627365-0-0-0-19 ~ ~-0.75 ~
execute if score @s bse.temp matches 10 run tp 627365-0-0-0-1A ~ ~-0.75 ~
execute if score @s bse.temp matches 11 run tp 627365-0-0-0-1B ~ ~-0.75 ~
execute if score @s bse.temp matches 12 run tp 627365-0-0-0-1C ~ ~-0.75 ~
execute if score @s bse.temp matches 13 run tp 627365-0-0-0-1D ~ ~-0.75 ~
execute if score @s bse.temp matches 14 run tp 627365-0-0-0-1E ~ ~-0.75 ~
execute if score @s bse.temp matches 15 run tp 627365-0-0-0-1F ~ ~-0.75 ~

#input actions
execute if entity @s[tag=bse.attack] run function bse:search/set_pos1
execute if entity @s[tag=bse.click] run function bse:search/set_pos2