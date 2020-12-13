#commands (0.. request spawner with specified value, -53 search)
execute if score @s bse.request matches 0.. run function bse:player/request_spawner
execute if score @s bse.request matches -19 run function bse:large_search
execute if score @s bse.request matches -53 run function bse:search

#non specific value error
execute if score @s bse.request matches -1 run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Invalid request; please set a specific value","color":"red"},"\n ",{"text":"[/trigger bse.request set <spawner ID>]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger bse.request set 0"},"hoverEvent":{"action":"show_text","contents":"Click here to suggest an example"}}]

#invalid range error
execute if score @s bse.request matches -2147483648.. unless score @s bse.request matches -53 unless score @s bse.request matches -19 unless score @s bse.request matches -2.. run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Invalid request; unknown value","color":"red"}]

scoreboard players set @s bse.request -2