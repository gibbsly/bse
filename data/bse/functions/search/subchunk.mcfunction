execute store result score sc_total= bse.temp run clone ~ ~ ~ ~15 ~15 ~15 ~ ~ ~ filtered spawner move

execute if score sc_total= bse.temp matches 1.. positioned ~ ~0 ~ store result score l1_total= bse.temp run clone ~ ~ ~ ~15 ~7 ~15 ~ ~ ~ filtered spawner move
execute if score sc_total= bse.temp matches 1.. positioned ~ ~8 ~ store result score l2_total= bse.temp run clone ~ ~ ~ ~15 ~7 ~15 ~ ~ ~ filtered spawner move

execute if score l1_total= bse.temp matches 1.. positioned ~ ~0 ~ run function bse:search/hsc
execute if score l2_total= bse.temp matches 1.. positioned ~ ~8 ~ run function bse:search/hsc