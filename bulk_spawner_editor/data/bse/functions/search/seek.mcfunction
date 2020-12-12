#adding scoreboard in-case it doesn't exist yet
scoreboard objectives add bse.search.main dummy
scoreboard players set #16 bse.search.main 16

#init
scoreboard players set loops= bse.search.main 0
scoreboard players set total= bse.search.main 0
summon minecraft:area_effect_cloud ~ ~ ~ {UUID:[I;6452069,0,0,1],Duration:10,UUIDLeast:1L,UUIDMost:27711425346535424L}

#aligning entity to chunk
execute store result score x= bse.search.main run data get entity @s Pos[0] 0.0625
scoreboard players remove x= bse.search.main 4
execute store result entity 627365-0-0-0-1 Pos[0] double 1 run scoreboard players operation x= bse.search.main *= #16 bse.search.main

execute store result score z= bse.search.main run data get entity @s Pos[2] 0.0625
scoreboard players remove z= bse.search.main 4
execute store result entity 627365-0-0-0-1 Pos[2] double 1 run scoreboard players operation z= bse.search.main *= #16 bse.search.main

data modify entity 627365-0-0-0-1 Pos[1] set value 0d

#running seek loop
execute at 627365-0-0-0-1 run function bse:search/seek/loop
kill 627365-0-0-0-1