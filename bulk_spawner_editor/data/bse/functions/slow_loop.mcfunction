#running spawner tick function on all spawner marker entities
execute as @e[type=minecraft:area_effect_cloud,tag=bse.spawner] at @s run function bse:spawners/tick

#player handling for triggers
execute as @a at @s run function bse:player

#re-scheduling function in 1 second
schedule function bse:slow_loop 1s