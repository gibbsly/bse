#removing scoreboards
scoreboard objectives remove bse.id
scoreboard objectives remove bse.main
scoreboard objectives remove bse.version
scoreboard objectives remove bse.search.main
scoreboard objectives remove bse.request

#removing data
data remove storage bse:main back
data remove storage bse:main temp
data remove storage bse:main current
data remove storage bse:main spawners
data remove storage bse:backup version
data remove storage bse:backup spawners
data remove storage bse:search current

#clearing slow loop
schedule clear bse:slow_loop

#removing blocks
fill 29999999 0 6452069 29999999 1 6452069 minecraft:bedrock
forceload remove 29999999 6452069

#tellraw feedback
tellraw @a ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"All functionality from this pack has been removed. You may now delete the datapack from the world.","color":"aqua"}]