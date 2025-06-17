setblock ~ ~ ~ acacia_leaves

execute if data storage bse:main spawners[{selected:1b}].id{type:0} run setblock ~ ~ ~ spawner
execute if data storage bse:main spawners[{selected:1b}].id{type:1} run setblock ~ ~ ~ trial_spawner

data modify block ~ ~ ~ {} merge from storage bse:main spawners[{selected:1b}].data

execute store result score bse_id= bse.temp run data get storage bse:main spawners[{selected:1b}].id.int
function bse:spawner/set_id