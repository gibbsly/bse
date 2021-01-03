execute store result score requested_id= bse.main run data get block ~ ~ ~ LastExecution
data modify block 29999999 1 6452069 Text1 set value '{"translate":"Spawner ID: %s","with":[{"score":{"objective":"bse.main","name":"requested_id="}}],"color":"aqua"}'
kill @e[type=minecraft:area_effect_cloud,tag=bse.spawner,distance=..0.25]
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[bse.spawner,bse.spawner.new],Duration:100,CustomName:'"a"'}
execute as @e[type=minecraft:area_effect_cloud,tag=bse.spawner.new,limit=1] at @s run function bse:use_tool/new_marker
setblock ~ ~ ~ spawner