scoreboard players add current_version= bse.main 1
execute store result storage bse:main current.SpawnerID int 1 run scoreboard players add current_id= bse.main 1
data modify storage bse:main spawners append from storage bse:main current