#setting up positions array
data modify storage bse:temp positions set value []
data modify storage bse:temp positions append from storage bse:main spawners[].positions[]

#setting up progress display
execute store result score total= bse.main run data get storage bse:temp positions
scoreboard players set processed= bse.main 0

#iterating
execute unless entity 627365-0-f-0-1 run summon marker 29999999 0 6452069 {UUID:[I;6452069,15,0,1]}
execute as 627365-0-f-0-1 run function bse:util/pa/start