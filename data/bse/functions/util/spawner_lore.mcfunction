#looping function to generate the lore of the item based on spawn potentials array

##generating text
#ID and weight
data modify block 29999999 1 6452069 Text1 set value '[{"translate":" Entity: %s, Weight: %s","color":"gray","italic":false,"with":[{"nbt":"spt[0].Entity.id","storage":"bse:main","color":"green"},{"nbt":"spt[0].Weight","storage":"bse:main","color":"gold"}]}]'
data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 Text1

#name if available
execute if data storage bse:main spt[0].Entity.CustomName run data modify block 29999999 1 6452069 Text1 set value '[{"translate":" Name: %s","color":"gray","italic":false,"with":[{"nbt":"spt[0].Entity.CustomName","storage":"bse:main","color":"green","interpret":true}]}]'
execute if data storage bse:main spt[0].Entity.CustomName run data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 Text1

#looping
data remove storage bse:main spt[0]
execute if data storage bse:main spt[0] run function bse:util/spawner_lore