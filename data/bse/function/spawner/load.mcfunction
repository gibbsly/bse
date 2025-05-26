execute store result score fl= bse.temp run forceload query ~ ~
execute if score fl= bse.temp matches 0 run scoreboard players set remove_forceload= bse.temp 1
forceload add ~ ~