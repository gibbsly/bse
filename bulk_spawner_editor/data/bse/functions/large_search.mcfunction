#first time use detection
execute unless predicate bse:has_wand_in_inv run function bse:large_search/first_time_use

scoreboard players set valid= bse.search.main 0
execute if score x1= bse.search.main matches -2147483648.. if score x2= bse.search.main matches -2147483648.. if score z1= bse.search.main matches -2147483648.. if score z2= bse.search.main matches -2147483648.. run scoreboard players set valid= bse.search.main 1

#running search if all pos are set
execute if score valid= bse.search.main matches 0 unless entity @s[tag=ftu] run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Please make your selection with both positions","color":"red"}]
execute if score valid= bse.search.main matches 1 run function bse:large_search/use

tag @s[tag=ftu] remove ftu