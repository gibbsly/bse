#finding rows
execute positioned ~0 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~ ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~0 ~ ~ run function bse:search/seek/row_found

execute positioned ~1 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~ ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~1 ~ ~ run function bse:search/seek/row_found

execute positioned ~2 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~ ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~2 ~ ~ run function bse:search/seek/row_found

execute positioned ~3 ~ ~ store result score count= bse.search.main run clone ~ ~ ~ ~ ~ ~143 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~3 ~ ~ run function bse:search/seek/row_found