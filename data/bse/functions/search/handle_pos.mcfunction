#getting into scoreboards
execute store result score x1= bse.temp run data get storage bse:search pos1[0]
execute store result score y1= bse.temp run data get storage bse:search pos1[1]
execute store result score z1= bse.temp run data get storage bse:search pos1[2]
execute store result score x2= bse.temp run data get storage bse:search pos1[0]
execute store result score y2= bse.temp run data get storage bse:search pos1[1]
execute store result score z2= bse.temp run data get storage bse:search pos1[2]
execute if score x1= bse.temp > x2= bse.temp run scoreboard players operation x1= bse.temp >< x2= bse.temp
execute if score y1= bse.temp > y2= bse.temp run scoreboard players operation y1= bse.temp >< y2= bse.temp
execute if score z1= bse.temp > z2= bse.temp run scoreboard players operation z1= bse.temp >< z2= bse.temp
scoreboard players operation x1= bse.temp /= 16 bse.num
scoreboard players operation x1= bse.temp *= 16 bse.num
scoreboard players operation y1= bse.temp = min_y= bse.main
scoreboard players operation z1= bse.temp /= 16 bse.num
scoreboard players operation z1= bse.temp *= 16 bse.num
scoreboard players operation x2= bse.temp /= 16 bse.num
scoreboard players operation x2= bse.temp *= 16 bse.num
scoreboard players operation y2= bse.temp = max_y= bse.main
scoreboard players operation z2= bse.temp /= 16 bse.num
scoreboard players operation z2= bse.temp *= 16 bse.num
scoreboard players operation dx= bse.temp = x2= bse.temp
execute store result score sx= bse.temp run scoreboard players operation dx= bse.temp -= x1= bse.temp
scoreboard players operation sx= bse.temp /= 16 bse.num
scoreboard players operation dy= bse.temp = y2= bse.temp
execute store result score sy= bse.temp run scoreboard players operation dy= bse.temp -= y1= bse.temp
scoreboard players operation sy= bse.temp /= 16 bse.num
scoreboard players operation dz= bse.temp = z2= bse.temp
execute store result score sz= bse.temp run scoreboard players operation dz= bse.temp -= z1= bse.temp
scoreboard players operation sz= bse.temp /= 16 bse.num