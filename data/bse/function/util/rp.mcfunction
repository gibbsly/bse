data modify block ~ ~ ~ SpawnData.entity."bse:id" set from storage bse:main spawners[{selected:1b}].id.int
function bse:util/gpa
data modify storage bse:main spawners[{selected:1b}].positions append from storage bse:temp pos