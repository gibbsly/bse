#checking
data modify storage bse:temp check set from storage bse:main current
execute store result score different= bse.main run data modify storage bse:temp check set from storage bse:main spawners[0].data

#conditionals
execute if score different= bse.main matches 1 run function bse:util/fd/scroll
execute if score different= bse.main matches 0 run function bse:util/fd/found_dupe

#looping
execute unless data storage bse:main spawners[0].end run function bse:util/fd/loop