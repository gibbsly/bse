#this function moves the requested spawner id to index 0 of the spawners array

#shifting arrays
data modify storage bse:main back append from storage bse:main spawners[0]
data remove storage bse:main spawners[0]

#loop
scoreboard players remove requested_id= bse.main 1
execute unless score requested_id= bse.main matches ..0 run function bse:util/scroll_to_requested_id