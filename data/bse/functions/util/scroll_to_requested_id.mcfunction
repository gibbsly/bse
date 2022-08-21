#this function moves the requested spawner id to index 0 of the spawners array

#shifting arrays
data modify storage bse:main back append from storage bse:main spawners[0]
data remove storage bse:main spawners[0]

#loop
execute store result score whatever_id= bse.main run data get storage bse:main spawners[0].SpawnerID
execute unless score requested_id= bse.main = whatever_id= bse.main run function bse:util/scroll_to_requested_id