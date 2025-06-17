function bse:spawner/get_id
scoreboard players operation id= bse.main = bse_id= bse.temp

function bse:util/si
function bse:util/ctc
data modify storage bse:main spawners[{selected:1b}].data set from storage bse:main current
function bse:util/us