#finding all spawners by chunk row
execute positioned ~000 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~15 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~000 ~ ~ run function bse:search/seek/chunk_found

execute positioned ~016 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~15 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~016 ~ ~ run function bse:search/seek/chunk_found

execute positioned ~032 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~15 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~032 ~ ~ run function bse:search/seek/chunk_found