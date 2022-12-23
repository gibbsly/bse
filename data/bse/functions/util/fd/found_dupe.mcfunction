execute store result score fd_id= bse.main run data get storage bse:main spawners[0].id.int
data modify storage bse:main spawners[].selected set value 0b
data modify storage bse:main spawners[0].selected set value 1b
data modify storage bse:main spawners prepend value {end:1b}