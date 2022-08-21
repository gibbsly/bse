#getting selected spawner id
scoreboard players operation requested_id= bse.main = @s bse.id

#scrolling to requested id
execute unless score requested_id= bse.main matches ..0 run function bse:util/scroll_to_requested_id

#updating value
setblock ~ ~ ~ air
setblock ~ ~ ~ spawner
data modify block ~ ~ ~ {} merge from storage bse:main spawners[0]

#restoring spawner array
data modify storage bse:main spawners prepend from storage bse:main back[]
data modify storage bse:main back set value []

#updating version
scoreboard players operation @s bse.version = current_version= bse.main