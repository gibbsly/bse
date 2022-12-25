tag @s remove bse.attack

#getting id and selecting it
scoreboard players set id= bse.main -1
execute if block ~ ~ ~ spawner store result score id= bse.main run data get block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ spawner run data remove block ~ ~ ~ SpawnData.entity."bse:id"
execute if entity @s[tag=bse.marker] run scoreboard players operation id= bse.main = @s bse.id
execute unless score id= bse.main matches -1 run function bse:util/si
execute unless score id= bse.main matches -1 run function bse:util/gpa
execute unless score id= bse.main matches -1 run function bse:util/rcp