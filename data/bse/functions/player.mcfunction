#gamemode get
execute store result score gamemode= bse.temp if entity @s[gamemode=!survival,gamemode=!adventure]

#trigger handling
execute if score gamemode= bse.temp matches 1 unless score @s bse.request matches -2 run function bse:player/value_triggered
execute if score gamemode= bse.temp matches 0 run scoreboard players reset @s bse.request
execute if score gamemode= bse.temp matches 1 run scoreboard players enable @s bse.request

#nearby spawner detection
execute store result score holding= bse.temp if predicate bse:has_tool
execute if score gamemode= bse.temp matches 1 run function bse:player/mark_spawners
scoreboard players set las= bse.temp 0
execute if score holding= bse.temp matches 1 anchored eyes positioned ^ ^ ^ run function bse:player/spawner_raycast
execute if score las= bse.temp matches 1 positioned as 627365-0-0-0-1 run function bse:player/looking_at_spawner
execute if score las= bse.temp matches 0 if entity @s[tag=bse.las,tag=bse.tool] run function bse:player/stop_looking_at_spawner

#clock click detection
execute store result score holding= bse.temp if predicate bse:has_clock
scoreboard players set las= bse.temp 0
execute if score holding= bse.temp matches 1 anchored eyes positioned ^ ^ ^ run function bse:player/search_raycast
execute if score las= bse.temp matches 1 positioned as 627365-0-0-0-1 run function bse:player/looking_at_block
execute if score las= bse.temp matches 0 if entity @s[tag=bse.las,tag=bse.clock] run function bse:player/stop_looking_at_block

tag @s remove bse.click
tag @s remove bse.attack