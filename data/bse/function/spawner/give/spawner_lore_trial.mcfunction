#looping function to generate the lore of the item based on spawn potentials array

##generating text
#ID and weight
data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Entity: %s, Weight: %s","color":"gray","italic":false,"with":[{"nbt":"spt[0].data.entity.id","storage":"bse:main","color":"green"},{"nbt":"spt[0].weight","storage":"bse:main","color":"gold"}]}]
data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

#name if available
execute if data storage bse:main spt[0].data.entity.CustomName run data modify block 29999999 1 6452069 front_text.messages[0] set value [{"translate":" Name: %s","color":"gray","italic":false,"with":[{"nbt":"spt[0].data.entity.CustomName","storage":"bse:main","color":"green","interpret":true}]}]
execute if data storage bse:main spt[0].data.entity.CustomName run data modify storage bse:main item.components.minecraft:lore append from block 29999999 1 6452069 front_text.messages[0]

#looping
data remove storage bse:main spt[0]
execute if data storage bse:main spt[0] run function bse:spawner/give/spawner_lore_trial