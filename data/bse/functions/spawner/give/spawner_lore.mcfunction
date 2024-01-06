#looping function to generate the lore of the item based on spawn potentials array

##generating text
#ID and weight
data modify block 29999999 1 6452069 front_text.messages[0] set value '[{"translate":" Entity: %s, Weight: %s","color":"gray","italic":false,"with":[{"nbt":"spt[0].data.entity.id","storage":"bse:main","color":"green"},{"nbt":"spt[0].Weight","storage":"bse:main","color":"gold"}]}]'
data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 front_text.messages[0]

#name if available
execute if data storage bse:main spt[0].data.entity.CustomName run data modify block 29999999 1 6452069 front_text.messages[0] set value '[{"translate":" Name: %s","color":"gray","italic":false,"with":[{"nbt":"spt[0].data.entity.CustomName","storage":"bse:main","color":"green","interpret":true}]}]'
execute if data storage bse:main spt[0].data.entity.CustomName run data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 front_text.messages[0]

#light if avalible
execute store result storage bse:main temps.1 int 1 if data storage bse:main spt[0].custom_spawn_rules.block_light_limit.max_inclusive run data get storage bse:main spt[0].custom_spawn_rules.block_light_limit.max_inclusive
execute store result storage bse:main temps.2 int 1 if data storage bse:main spt[0].custom_spawn_rules.sky_light_limit.max_inclusive run data get storage bse:main spt[0].custom_spawn_rules.sky_light_limit.max_inclusive
execute store result storage bse:main temps.1 int 1 unless data storage bse:main spt[0].custom_spawn_rules.block_light_limit.max_inclusive run data get storage bse:main spt[0].custom_spawn_rules.block_light_limit
execute store result storage bse:main temps.2 int 1 unless data storage bse:main spt[0].custom_spawn_rules.sky_light_limit.max_inclusive run data get storage bse:main spt[0].custom_spawn_rules.sky_light_limit
data modify block 29999999 1 6452069 front_text.messages[0] set value '{"italic":false,"color":"gray","translate":" Max Block Light: %s, Max Sky Light: %s","with":[{"nbt":"temps.1","storage":"bse:main","color":"gold"},{"nbt":"temps.2","storage":"bse:main","color":"gold"}]}'
data modify storage bse:main item.tag.display.Lore append from block 29999999 1 6452069 front_text.messages[0]

#looping
data remove storage bse:main spt[0]
execute if data storage bse:main spt[0] run function bse:spawner/give/spawner_lore