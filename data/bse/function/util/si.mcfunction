# selects spawners based on id
execute store result storage bse:temp id int 1 run scoreboard players get id= bse.main
execute if data storage bse:main spawners[0] run data modify storage bse:main spawners[].selected set value 0b
execute if data storage bse:main spawners[0] run function bse:util/select_id/set_selected with storage bse:temp