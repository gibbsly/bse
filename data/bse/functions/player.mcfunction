execute unless score @s[gamemode=!survival,gamemode=!adventure] bse.request matches -2 run function bse:player/value_triggered

#trigger handling
scoreboard players reset @s[gamemode=!creative,gamemode=!spectator] bse.request
scoreboard players enable @s[gamemode=!survival,gamemode=!adventure] bse.request

#selection tools
execute if score @s bse.use matches 1.. run function bse:player/use