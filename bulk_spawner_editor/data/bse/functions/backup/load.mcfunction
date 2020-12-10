#writing data
data modify storage bse:main back set value []
data modify storage bse:main spawners set from storage bse:backup spawners

#writing version number
execute store result score current_version= bse.main run data get storage bse:backup version