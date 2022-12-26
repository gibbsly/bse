#copying spawner ad finding any duplicates
function bse:util/ctc
function bse:util/fd

#conditionals
##creating new if none found
execute if score fd_id= bse.main matches -1 run function bse:spawner/create_new
##marking as found id
execute unless score fd_id= bse.main matches -1 run function bse:util/rp

scoreboard players add found= bse.main 1