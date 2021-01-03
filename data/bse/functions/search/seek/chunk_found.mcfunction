#finding sub rows
execute positioned ~00 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~3 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~00 ~ ~ run function bse:search/seek/rows_found

execute positioned ~04 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~3 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~04 ~ ~ run function bse:search/seek/rows_found

execute positioned ~08 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~3 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~08 ~ ~ run function bse:search/seek/rows_found

execute positioned ~12 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~3 ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~12 ~ ~ run function bse:search/seek/rows_found