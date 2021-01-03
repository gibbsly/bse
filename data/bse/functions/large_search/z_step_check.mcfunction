execute store result score z= bse.search.main run data get entity @s Pos[2]
scoreboard players add z= bse.search.main 144
execute if score z= bse.search.main <= z2= bse.search.main run function bse:large_search/z_step