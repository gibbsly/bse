#getting id and selecting it
function bse:spawner/get_id
scoreboard players operation id= bse.main = bse_id= bse.temp

function bse:spawner/remove_id

execute if entity @s[tag=bse.marker] run scoreboard players operation id= bse.main = @s bse.id
execute unless score id= bse.main matches -1 run function bse:util/si
execute unless score id= bse.main matches -1 run function bse:util/gpa
execute unless score id= bse.main matches -1 run function bse:util/rcp

#new code - added code to set the cloud's id back to -1 when you specifically remove a location from the list
execute if entity @s[tag=bse.attack] as @e[type=area_effect_cloud,tag=bse.marker,limit=1,sort=nearest] at @s run scoreboard players set @s bse.id -1
tag @s remove bse.attack
