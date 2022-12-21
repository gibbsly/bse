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

tag @s add bse.las