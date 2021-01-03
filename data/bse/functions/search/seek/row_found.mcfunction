#finding blocks in 3 sections
execute positioned ~ ~ ~00 store result score count= bse.search.main run clone ~ ~ ~ ~ ~ ~47 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~ ~ ~00 run function bse:search/seek/replace_blocks

execute positioned ~ ~ ~48 store result score count= bse.search.main run clone ~ ~ ~ ~ ~ ~47 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~ ~ ~48 run function bse:search/seek/replace_blocks

execute positioned ~ ~ ~96 store result score count= bse.search.main run clone ~ ~ ~ ~ ~ ~47 ~ ~ ~ filtered minecraft:spawner move
execute if score count= bse.search.main matches 1.. positioned ~ ~ ~96 run function bse:search/seek/replace_blocks