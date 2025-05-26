#checking if this position exists in array
data modify storage bse:temp positions set from storage bse:main spawners[{selected:1b}].positions
execute store result score total= bse.temp run data get storage bse:temp positions
execute store result score override= bse.temp run data modify storage bse:temp positions[] set from storage bse:temp pos
execute store result score exists= bse.temp unless score total= bse.temp = override= bse.temp

#removing if exists
execute if score exists= bse.temp matches 1 run function bse:util/rcp/start