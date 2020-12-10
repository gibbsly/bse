#moving data from array into check value and writing spawner id to current
data modify storage bse:main check_value set from storage bse:main check_list[0]
data remove storage bse:main check_list[0]
data modify storage bse:main current.SpawnerID set from storage bse:main check_value.SpawnerID

#testing for dupe, returns 0 on duplicate
execute store result score test= bse.main run data modify storage bse:main check_value set from storage bse:main current

#looping if no dupe is found and there are still entires in the check_list array
execute if score test= bse.main matches 1 if data storage bse:main check_list[0] run function bse:util/find_dupe_loop