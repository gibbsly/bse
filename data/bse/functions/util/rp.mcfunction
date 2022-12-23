data modify block ~ ~ ~ SpawnData.entity."bse:id" set from storage bse:main spawners[{selected:1b}].id.int
function br:util/gpa
data modify storage br:main spawners[{selected:1b}].positions append from storage bse:temp pos