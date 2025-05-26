#showing name if player nearby
execute store result score cnv= bse.temp store success entity @s CustomNameVisible byte 1 if entity @a[distance=..10,gamemode=!survival,gamemode=!adventure,nbt={Inventory:[{id:"minecraft:debug_stick"}]}]

#checking conditions 
execute store result score player= bse.temp if entity @a[distance=..16]
execute store result score spawner= bse.temp if block ~ ~ ~ spawner

#removing from list if spawner removed
execute unless entity @s[tag=bse.spawner_wait] if score spawner= bse.temp matches 0 if score @s bse.id matches 0.. run function bse:spawner/remove_current_location_from_list
execute unless entity @s[tag=bse.spawner_wait] if score spawner= bse.temp matches 0 if score @s bse.id matches 0.. run tag @s add bse.spawner_wait
execute if entity @s[tag=bse.spawner_wait] if score spawner= bse.temp matches 1 run function bse:marker/new_spawner_at_location

#updating tracking id
execute unless entity @s[tag=bse.spawner_wait] if score spawner= bse.temp matches 1 unless score @s bse.id matches -1.. if data block ~ ~ ~ SpawnData.entity."bse:id" store result score @s bse.id run data get block ~ ~ ~ SpawnData.entity."bse:id"
execute unless entity @s[tag=bse.spawner_wait] if score spawner= bse.temp matches 1 unless score @s bse.id matches -1.. unless data block ~ ~ ~ SpawnData.entity."bse:id" run scoreboard players set @s bse.id -1

#keeping name up to date 
execute if score cnv= bse.temp matches 1 run function bse:util/un

#keeping around if player nearby
execute if score player= bse.temp matches 1.. run data modify entity @s Age set value 0

#removing from list if no player nearby and no spawner at this location
execute if score player= bse.temp matches 0 if score spawner= bse.temp matches 0 run kill @s