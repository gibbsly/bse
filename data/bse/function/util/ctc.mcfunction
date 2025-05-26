data modify storage bse:main current set value {}
data modify storage bse:main current set from block ~ ~ ~
data remove storage bse:main current.x
data remove storage bse:main current.y
data remove storage bse:main current.z
data remove storage bse:main current.id
data remove storage bse:main current.Delay
data remove storage bse:main current.SpawnData.entity."bse:id"
data remove storage bse:main current.SpawnPotentials[].data.entity."bse:id"
function bse:util/ctc/fix_tag