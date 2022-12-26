kill @s
data modify entity @s Pos set from storage bse:temp Pos

scoreboard players operation z_steps= bse.temp = sz= bse.temp
execute at @s run function bse:search/zcol

data modify entity @s Pos set value [29999999d,0d,6452069d]