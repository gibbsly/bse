execute if block ~ ~ ~ spawner run data remove block ~ ~ ~ SpawnData.entity."bse:id"
execute if entity @s[tag=bse.marker] run scoreboard players set @s bse.id -1

##removing this location from the id's positions list
#generating pos array to compare to
function bse:util/gpa