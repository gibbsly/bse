#setting up positions array in temp and emptying output array
data modify storage bse:temp positions set from storage bse:main spawners[{selected:1b}].positions
data modify storage bse:temp processed set value []

#setting up progress display
execute store result score total= bse.main run data get storage bse:temp positions
scoreboard players set processed= bse.main 0

#getting id on scoreboard
execute store result score id= bse.main run data get storage bse:main spawners[{selected:1b}].id.int

#iterating
execute unless entity 627365-0-f-0-1 run summon marker 29999999 0 6452069 {UUID:[I;6452069,15,0,1]}
execute as 627365-0-f-0-1 run function bse:util/us/start

#restoring processed array
data modify storage bse:main spawners[{selected:1b}].positions set from storage bse:temp processed