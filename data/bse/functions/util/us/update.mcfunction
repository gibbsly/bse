setblock ~ ~ ~ air
setblock ~ ~ ~ spawner
data modify block ~ ~ ~ {} merge from storage bse:main spawners[{selected:1b}].data
data modify block ~ ~ ~ SpawnData.entity."bse:id" set from storage bse:main spawners[{selected:1b}].id.int
scoreboard players set mtp= bse.temp 1