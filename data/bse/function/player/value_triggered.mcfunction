#commands (0.. request spawner with specified value, -53 search, -19 large search)
execute if score @s bse.request matches 0.. run function bse:player/request_spawner
execute if score @s bse.request matches -53 run function bse:search

#invalid range error
execute if score @s bse.request matches -2147483648.. unless score @s bse.request matches -53 unless score @s bse.request matches -19 unless score @s bse.request matches 0.. run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Invalid request; unknown value","color":"red"},"\n ",{"text":"[/trigger bse.request set <spawner ID>]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger bse.request set 0"},"hoverEvent":{"action":"show_text","contents":{"text":"gives a spawner with the specified id","color":"gray"}}},"\n ",{"text":"[/trigger bse.request set -59]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger bse.request set -53"},"hoverEvent":{"action":"show_text","contents":{"text":"runs the search function","color":"gray"}}}]

scoreboard players set @s bse.request -2