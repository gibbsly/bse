#resetting values
data merge entity @s {Age:0,CustomNameVisible:0b}

#checks
execute unless score @s bse.id matches 0.. run kill @s
execute if score @s bse.id matches 0.. unless score @s bse.version = current_version= bse.main if block ~ ~ ~ spawner run function bse:spawners/update
execute unless entity @a[distance=..10] unless block ~ ~ ~ spawner run kill @s
execute if entity @a[distance=..10,predicate=bse:has_tool,gamemode=creative] run data modify entity @s CustomNameVisible set value 1b