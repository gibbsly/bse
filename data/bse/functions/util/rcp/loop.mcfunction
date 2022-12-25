data modify storage bse:temp check set from storage bse:temp positions[0]
execute store result score check= bse.main run data modify storage bse:temp check set from storage bse:temp pos
execute if score check= bse.main matches 1 run data modify storage bse:temp hold append from storage bse:temp positions[0]
data remove storage bse:temp positions[0]
execute if data storage bse:temp positions[0] run function bse:util/rcp/loop