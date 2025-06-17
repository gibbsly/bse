# select all spawners with id as bse:main spawners[{selected:1b}]
function bse:util/si

# give spawner
execute if data storage bse:main spawners[{selected:1b}].id{type:0} run function bse:util/gs/spawner
execute if data storage bse:main spawners[{selected:1b}].id{type:1} run function bse:util/gs/trial

#summoning item
execute at @s run summon item ~ ~ ~ {Tags:[bse.item.new],Item:{id:"minecraft:stone",count:1}}
execute at @s as @e[type=item,tag=bse.item.new,limit=1] run data modify entity @s Item set from storage bse:main item
tag @e[type=item,tag=bse.item.new,limit=1] remove bse.item.new