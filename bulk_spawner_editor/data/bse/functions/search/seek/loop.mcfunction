#counting layer
execute store result score count= bse.search.main run clone ~ ~ ~ ~143 ~ ~143 ~ ~ ~ filtered minecraft:spawner move

#running layer_found if any spawners on this layer
execute if score count= bse.search.main matches 1.. run function bse:search/seek/layer_found

#moving entity up and incrementing counter
scoreboard players add loops= bse.search.main 1

#loop
execute if score loops= bse.search.main matches ..254 positioned ~ ~1 ~ run function bse:search/seek/loop
