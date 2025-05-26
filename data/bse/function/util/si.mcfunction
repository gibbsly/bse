#selects spawner based on id
scoreboard players operation id= bse.temp = id= bse.main
scoreboard players operation s= bse.temp = id= bse.temp
execute if data storage bse:main spawners[0] run data modify storage bse:main spawners[].selected set value 0b

#1
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
scoreboard players operation s= bse.temp %= 10 bse.num
execute if score s= bse.temp matches 0 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:0b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 1 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:1b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 2 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:2b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 3 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:3b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 4 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:4b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 5 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:5b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 6 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:6b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 7 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:7b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 8 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:8b},selected:0b}].selected set value 10b
execute if score s= bse.temp matches 9 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{1:9b},selected:0b}].selected set value 10b

#2
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
scoreboard players operation s= bse.temp %= 10 bse.num
execute if score s= bse.temp matches 0 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:0b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 1 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:1b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 2 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:2b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 3 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:3b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 4 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:4b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 5 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:5b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 6 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:6b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 7 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:7b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 8 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:8b},selected:10b}].selected set value 20b
execute if score s= bse.temp matches 9 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{2:9b},selected:10b}].selected set value 20b

#3
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
scoreboard players operation s= bse.temp %= 10 bse.num
execute if score s= bse.temp matches 0 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:0b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 1 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:1b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 2 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:2b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 3 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:3b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 4 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:4b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 5 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:5b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 6 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:6b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 7 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:7b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 8 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:8b},selected:20b}].selected set value 30b
execute if score s= bse.temp matches 9 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{3:9b},selected:20b}].selected set value 30b

#4
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
scoreboard players operation s= bse.temp %= 10 bse.num
execute if score s= bse.temp matches 0 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:0b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 1 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:1b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 2 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:2b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 3 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:3b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 4 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:4b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 5 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:5b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 6 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:6b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 7 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:7b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 8 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:8b},selected:30b}].selected set value 40b
execute if score s= bse.temp matches 9 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{4:9b},selected:30b}].selected set value 40b

#5
scoreboard players operation s= bse.temp = id= bse.temp
scoreboard players operation id= bse.temp /= 10 bse.num
scoreboard players operation s= bse.temp %= 10 bse.num
execute if score s= bse.temp matches 0 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:0b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 1 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:1b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 2 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:2b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 3 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:3b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 4 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:4b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 5 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:5b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 6 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:6b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 7 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:7b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 8 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:8b},selected:40b}].selected set value 1b
execute if score s= bse.temp matches 9 if data storage bse:main spawners[0] run data modify storage bse:main spawners[{id:{5:9b},selected:40b}].selected set value 1b