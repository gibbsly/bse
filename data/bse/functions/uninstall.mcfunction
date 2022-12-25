#removing "bse:id" from all spawners
function bse:unmark_all_spawners

#removing scoreboards
scoreboard objectives remove bse.request
scoreboard objectives remove bse.main
scoreboard objectives remove bse.temp
scoreboard objectives remove bse.num
scoreboard objectives remove bse.id

#removing data
data remove storage bse:main back
data remove storage bse:main temp
data remove storage bse:main current
data remove storage bse:main spawners
data remove storage bse:backup version
data remove storage bse:backup spawners
data remove storage bse:fix_tag current
data remove storage bse:fix_tag potentials_in
data remove storage bse:fix_tag potentials_out

#removing horses
schedule clear bse:spawn_horses
kill 627365-0-0-0-10
kill 627365-0-0-0-11
kill 627365-0-0-0-12
kill 627365-0-0-0-13
kill 627365-0-0-0-14
kill 627365-0-0-0-15
kill 627365-0-0-0-16
kill 627365-0-0-0-17
kill 627365-0-0-0-18
kill 627365-0-0-0-19
kill 627365-0-0-0-1A
kill 627365-0-0-0-1B
kill 627365-0-0-0-1C
kill 627365-0-0-0-1D
kill 627365-0-0-0-1E
kill 627365-0-0-0-1F

#removing blocks
fill 29999999 0 6452069 29999999 1 6452069 minecraft:bedrock
forceload remove 29999999 6452069

#tellraw feedback
tellraw @a ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"All functionality from this pack has been removed. You may now delete the datapack from the world.","color":"aqua"}]