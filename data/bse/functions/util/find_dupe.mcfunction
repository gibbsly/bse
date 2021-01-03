#this function searches the spawners array for a duplicate value from the current object

#data init
scoreboard players set requested_id= bse.main -1
data modify storage bse:main check_list set from storage bse:main spawners

#running loop, if score test= bse.main = 1 then no dupe has been found
function bse:util/find_dupe_loop

#removing data
data remove storage bse:main check_list
data remove storage bse:main check_value

#changing stick use if dupe is found
execute if score test= bse.main matches 0 run scoreboard players set stick_use= bse.main 3