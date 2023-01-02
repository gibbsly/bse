function bse:util/gs

#summoning item
execute at @s run summon item ~ ~ ~ {Tags:[bse.item.new],Item:{id:"minecraft:stone",Count:1b}}
execute at @s as @e[type=item,tag=bse.item.new,limit=1] run data modify entity @s Item set from storage bse:main item
tag @e[type=item,tag=bse.item.new,limit=1] remove bse.item.new