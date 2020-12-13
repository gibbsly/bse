#adding dist
scoreboard players add dist= bse.search.main 1

#checking for blocks
execute unless block ^ ^ ^ #bse:wand_ignore run scoreboard players set dist= bse.search.main 1000
execute unless block ^0.01 ^ ^ #bse:wand_ignore run scoreboard players set dist= bse.search.main 1000
execute unless block ^-0.01 ^ ^ #bse:wand_ignore run scoreboard players set dist= bse.search.main 1000
execute unless block ^ ^0.01 ^ #bse:wand_ignore run scoreboard players set dist= bse.search.main 1000
execute unless block ^ ^-0.01 ^ #bse:wand_ignore run scoreboard players set dist= bse.search.main 1000

execute if score dist= bse.search.main matches 500.. run summon minecraft:area_effect_cloud ~ ~ ~ {UUID:[I;6452069,0,0,1],Duration:10,UUIDLeast:1L,UUIDMost:27711425346535424L}

execute unless score dist= bse.search.main matches 500.. positioned ^ ^ ^0.01 run function bse:use_wand/find_block