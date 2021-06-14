#commands (0.. request spawner with specified value, -53 search, -19 large search)
execute if score @s bse.request matches 0.. run function bse:player/request_spawner
execute if score @s bse.request matches -19 run function bse:large_search
execute if score @s bse.request matches -53 run function bse:search

#non specific value error
execute if score @s bse.request matches -1 run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ","Giving you the selection tool, right click a spawner to register it."]
execute if score @s bse.request matches -1 run give @s minecraft:carrot_on_a_stick{bseTool:1b,display:{Name:'{"text":"BSE Tool","color":"light_purple","italic":false}'},Enchantments:[{lvl:1}]}

#invalid range error
execute if score @s bse.request matches -2147483648.. unless score @s bse.request matches -53 unless score @s bse.request matches -19 unless score @s bse.request matches -2.. run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Invalid request; unknown value","color":"red"}]

scoreboard players set @s bse.request -2