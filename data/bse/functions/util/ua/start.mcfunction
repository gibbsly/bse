kill @s
execute if data storage bse:temp positions[0] run function bse:util/ua/loop
data modify entity @s Pos set value [29999999d,0d,6452069d]