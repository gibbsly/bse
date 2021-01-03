execute as @e[type=item,limit=1,sort=nearest] run function bse:search/cmd/found_spawner/item
setblock ~ ~ ~ spawner
data modify block ~ ~ ~ {} merge from storage bse:search current

function bse:use_tool/found_spawner

kill @e[type=minecraft:experience_orb]