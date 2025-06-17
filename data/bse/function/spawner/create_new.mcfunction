execute if data storage bse:main spawners[0] run data modify storage bse:main spawners[].selected set value 0b
data modify storage bse:main spawners append value {id:{int:0,type:0},data:{},positions:[],selected:1b}

#copying data
data modify storage bse:main spawners[{selected:1b}].data set from storage bse:main current

#writing id
execute store result score id= bse.main store result storage bse:main spawners[{selected:1b}].id.int int 1 run scoreboard players add current_id= bse.main 1

execute if block ~ ~ ~ spawner run data modify storage bse:main spawners[{selected:1b}].id.type set value 0
execute if block ~ ~ ~ trial_spawner run data modify storage bse:main spawners[{selected:1b}].id.type set value 1

#adding curent pos to pos array
function bse:util/rp