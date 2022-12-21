#writes a pos array to storage bse:temp pos

#placing marker to get entity position at storage bse:temp marker_pos
summon marker 29999999 0 6452069 {UUID:[I;6452069,0,0,1]}
execute as 627365-0-0-0-1 run function bse:util/gpa/as_marker

#writing 
data modify storage bse:temp pos set value [I;0,0,0]
execute store result storage bse:temp pos[0] int 1 run data get storage bse:temp marker_pos[0]
execute store result storage bse:temp pos[1] int 1 run data get storage bse:temp marker_pos[1]
execute store result storage bse:temp pos[2] int 1 run data get storage bse:temp marker_pos[2]