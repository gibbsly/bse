#finding all spawners by chunk group row
execute positioned ~000 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~47 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~000 ~ ~ run function bse:search/seek/chunk_group_found

execute positioned ~048 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~47 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~048 ~ ~ run function bse:search/seek/chunk_group_found

execute positioned ~096 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~47 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~096 ~ ~ run function bse:search/seek/chunk_group_found