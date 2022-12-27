tellraw @a[gamemode=!survival,gamemode=!adventure] ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Starting search for spawners in selected chunks. ","color":"aqua"}]

#getting into scoreboards
execute store result score x1= bse.temp run data get storage bse:search pos1[0]
execute store result score y1= bse.temp run data get storage bse:search pos1[1]
execute store result score z1= bse.temp run data get storage bse:search pos1[2]
execute store result score x2= bse.temp run data get storage bse:search pos2[0]
execute store result score y2= bse.temp run data get storage bse:search pos2[1]
execute store result score z2= bse.temp run data get storage bse:search pos2[2]
execute if score x1= bse.temp > x2= bse.temp run scoreboard players operation x1= bse.temp >< x2= bse.temp
execute if score y1= bse.temp > y2= bse.temp run scoreboard players operation y1= bse.temp >< y2= bse.temp
execute if score z1= bse.temp > z2= bse.temp run scoreboard players operation z1= bse.temp >< z2= bse.temp
data modify storage bse:temp Pos set value [0d,0d,0d]
scoreboard players operation x1= bse.temp /= 16 bse.num
execute store result storage bse:temp Pos[0] double 1 run scoreboard players operation x1= bse.temp *= 16 bse.num
execute store result storage bse:temp Pos[1] double 1 run scoreboard players operation y1= bse.temp = min_y= bse.main
scoreboard players operation z1= bse.temp /= 16 bse.num
execute store result storage bse:temp Pos[2] double 1 run scoreboard players operation z1= bse.temp *= 16 bse.num
scoreboard players operation x2= bse.temp /= 16 bse.num
scoreboard players operation x2= bse.temp *= 16 bse.num
scoreboard players operation y2= bse.temp = max_y= bse.main
scoreboard players operation z2= bse.temp /= 16 bse.num
scoreboard players operation z2= bse.temp *= 16 bse.num
scoreboard players operation dx= bse.temp = x2= bse.temp
execute store result score sx= bse.temp run scoreboard players operation dx= bse.temp -= x1= bse.temp
scoreboard players operation sx= bse.temp /= 16 bse.num
scoreboard players add sx= bse.temp 1
scoreboard players operation dy= bse.temp = y2= bse.temp
execute store result score sy= bse.temp run scoreboard players operation dy= bse.temp -= y1= bse.temp
scoreboard players operation sy= bse.temp /= 16 bse.num
scoreboard players add sy= bse.temp 1
scoreboard players operation dz= bse.temp = z2= bse.temp
execute store result score sz= bse.temp run scoreboard players operation dz= bse.temp -= z1= bse.temp
scoreboard players operation sz= bse.temp /= 16 bse.num
scoreboard players add sz= bse.temp 1
scoreboard players operation total_chunks= bse.main = sx= bse.temp
scoreboard players operation total_chunks= bse.main *= sy= bse.temp
scoreboard players operation total_chunks= bse.main *= sz= bse.temp

#iterating
data remove storage bse:search pos1
data remove storage bse:search pos2
execute unless entity 627365-0-f-0-1 run summon marker 29999999 0 6452069 {UUID:[I;6452069,15,0,1]}
execute as 627365-0-f-0-1 run function bse:search/start

tellraw @a[gamemode=!survival,gamemode=!adventure] ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",[{"text":"Searched ","color":"aqua"},{"score":{"name":"chunk=","objective":"bse.main"},"color":"green"}," sub-chunks and found ",{"score":{"name":"found=","objective":"bse.main"},"color":"green"}," spawners."]]

#tellraw @a ["starting pos: ",{"nbt":"Pos","storage":"bse:temp"},", x steps: ",{"score":{"name":"sx=","objective":"bse.temp"}},", y steps: ",{"score":{"name":"sy=","objective":"bse.temp"}},", z steps: ",{"score":{"name":"sz=","objective":"bse.temp"}}]