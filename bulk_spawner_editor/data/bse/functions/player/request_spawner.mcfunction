execute store result score total= bse.request run data get storage bse:main spawners
scoreboard players remove total= bse.request 1
execute if score @s bse.request <= total= bse.request run function bse:player/give_request
execute if score @s bse.request > total= bse.request run tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Invalid request; no spawner available with that ID","color":"red"}]