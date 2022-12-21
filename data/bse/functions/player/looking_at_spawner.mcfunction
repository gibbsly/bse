particle soul_fire_flame ~0.5 ~0.5 ~0.5 0 0 0 0 1 normal @s
particle soul_fire_flame ~-0.5 ~0.5 ~0.5 0 0 0 0 1 normal @s
particle soul_fire_flame ~0.5 ~0.5 ~-0.5 0 0 0 0 1 normal @s
particle soul_fire_flame ~-0.5 ~0.5 ~-0.5 0 0 0 0 1 normal @s
particle soul_fire_flame ~0.5 ~-0.5 ~0.5 0 0 0 0 1 normal @s
particle soul_fire_flame ~-0.5 ~-0.5 ~0.5 0 0 0 0 1 normal @s
particle soul_fire_flame ~0.5 ~-0.5 ~-0.5 0 0 0 0 1 normal @s
particle soul_fire_flame ~-0.5 ~-0.5 ~-0.5 0 0 0 0 1 normal @s

kill 627365-0-0-0-1

execute store result score has_bse_id= bse.temp if data block ~ ~ ~ SpawnData.entity."bse:id"

execute if score has_bse_id= bse.temp matches 0 run title @s actionbar [{"keybind":"key.use","color":"aqua"},{"text":" to register this spawner","color":"aqua"}]
execute if score has_bse_id= bse.temp matches 1 run title @s actionbar [{"text":"","color":"gray"},{"keybind":"key.use","color":"aqua"},{"text":" to get","color":"aqua"}," | ",[{"keybind":"key.sneak","color":"aqua"}," + ",{"keybind":"key.use"},{"text":" to update"}]]

execute unless entity @s[tag=bse.las] run function bse:player/start_looking_at_spawner

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