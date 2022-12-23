#making backup
data modify storage bse:backup spawners set from storage bse:main spawners
schedule function bse:util/br 1t

#finds duplicate and returns the id
data remove storage bse:main spawners[{end:1b}]
data modify storage bse:main spawners append value {end:1b}

scoreboard players set fd_id= bse.main -1
execute unless data storage bse:main spawners[0].end run function bse:util/fd/loop
data remove storage bse:main spawners[{end:1b}]

#marking backup handling as done
schedule clear bse:util/br