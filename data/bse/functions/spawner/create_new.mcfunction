data modify storage bse:main spawners[].selected set value 0b
data modify storage bse:main spawners append value {id:{1:0b,2:0b,3:0b,4:0b,5:0d,int:0},data:{},positions:[],selected:1b}

#copying data
data modify storage bse:main spawners[0].data set from storage bse:main current

#writing id
execute store result score id= bse.temp store result score id= bse.main store result storage bse:main spawners[0].id.int int 1 run scoreboard players add current_id= bse.main 1
##1
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
execute store result storage bse:main spawners[0].id.1 byte 1 run scoreboard players operation s= bse.temp %= 10 bse.num
##2
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
execute store result storage bse:main spawners[0].id.2 byte 1 run scoreboard players operation s= bse.temp %= 10 bse.num
##3
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
execute store result storage bse:main spawners[0].id.3 byte 1 run scoreboard players operation s= bse.temp %= 10 bse.num
##4
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
execute store result storage bse:main spawners[0].id.4 byte 1 run scoreboard players operation s= bse.temp %= 10 bse.num
##5
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
execute store result storage bse:main spawners[0].id.5 byte 1 run scoreboard players operation s= bse.temp %= 10 bse.num

#adding curent pos to pos array
function bse:util/rp