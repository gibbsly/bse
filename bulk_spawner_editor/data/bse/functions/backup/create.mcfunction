#writing data and version number
data modify storage bse:backup spawners set from storage bse:main spawners
execute store result storage bse:backup version int 1 run scoreboard players get current_version= bse.main