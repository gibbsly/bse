data modify storage bse:text settings set value [ "", \
{"text":"[BSE]:","color":"yellow","bold":true}, " ", \
{"text":"ID Fuzziness Settings","color":"gray"}, "          ", \
{"text":"[Defaults]","color":"red","hover_event":{"action":"show_text","value":[{"text":"Reset Filters"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 999"}}, \
"\n\n ", \
{"text":"Spawner Options: ","color":"gray"}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Player Range"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 100"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Spawn Range"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 101"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Max Spawn Delay"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 102"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Min Spawn Delay"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 103"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Max Nearby Entities"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 104"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Entity Count"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 105"}}, \
"\n\n ", \
{"text":"Trial Spawner Options: ","color":"gray"}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Cooldown"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 200"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Player Range"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 201"}}, \
"\n ", \
{"text":"          Normal Config: ","color":"gray"}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Ticks Between Spawns"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 300"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Spawn Range"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 301"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Total Mobs"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 302"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Per Player Total Mobs Bonus"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 303"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Mobs At Once"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 304"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Per Player Mobs At Once Bonus"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 305"}}, \
"\n ", \
{"text":"         Ominous Config: ","color":"gray"}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Ticks Between Spawns"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 400"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Spawn Range"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 401"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Total Mobs"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 402"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Per Player Total Mobs Bonus"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 403"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Mobs At Once"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 404"}}, \
{"text":"[☆] ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Filter by Per Player Mobs At Once Bonus"}]},"click_event":{"action":"run_command","command":"/trigger bse.settings set 405"}}, \
]

execute if score filter.spawner.player_range= bse.main matches 0 run data modify storage bse:text settings[8]."color" set value "dark_gray"
execute if score filter.spawner.spawn_range= bse.main matches 0 run data modify storage bse:text settings[9]."color" set value "dark_gray"
execute if score filter.spawner.max_spawn_delay= bse.main matches 0 run data modify storage bse:text settings[10]."color" set value "dark_gray"
execute if score filter.spawner.min_spawn_delay= bse.main matches 0 run data modify storage bse:text settings[11]."color" set value "dark_gray"
execute if score filter.spawner.max_nearby= bse.main matches 0 run data modify storage bse:text settings[12]."color" set value "dark_gray"
execute if score filter.spawner.count= bse.main matches 0 run data modify storage bse:text settings[13]."color" set value "dark_gray"
execute if score filter.trial_spawner.cooldown= bse.main matches 0 run data modify storage bse:text settings[16]."color" set value "dark_gray"
execute if score filter.trial_spawner.player_range= bse.main matches 0 run data modify storage bse:text settings[17]."color" set value "dark_gray"
execute if score filter.trial_spawner.normal_config.ticks_between_spawns= bse.main matches 0 run data modify storage bse:text settings[20]."color" set value "dark_gray"
execute if score filter.trial_spawner.normal_config.spawn_range= bse.main matches 0 run data modify storage bse:text settings[21]."color" set value "dark_gray"
execute if score filter.trial_spawner.normal_config.total_mobs= bse.main matches 0 run data modify storage bse:text settings[22]."color" set value "dark_gray"
execute if score filter.trial_spawner.normal_config.per_player_total_mobs_bonus= bse.main matches 0 run data modify storage bse:text settings[23]."color" set value "dark_gray"
execute if score filter.trial_spawner.normal_config.mobs_at_once= bse.main matches 0 run data modify storage bse:text settings[24]."color" set value "dark_gray"
execute if score filter.trial_spawner.normal_config.per_player_mobs_at_once_bonus= bse.main matches 0 run data modify storage bse:text settings[25]."color" set value "dark_gray"
execute if score filter.trial_spawner.ominous_config.ticks_between_spawns= bse.main matches 0 run data modify storage bse:text settings[28]."color" set value "dark_gray"
execute if score filter.trial_spawner.ominous_config.spawn_range= bse.main matches 0 run data modify storage bse:text settings[29]."color" set value "dark_gray"
execute if score filter.trial_spawner.ominous_config.total_mobs= bse.main matches 0 run data modify storage bse:text settings[30]."color" set value "dark_gray"
execute if score filter.trial_spawner.ominous_config.per_player_total_mobs_bonus= bse.main matches 0 run data modify storage bse:text settings[31]."color" set value "dark_gray"
execute if score filter.trial_spawner.ominous_config.mobs_at_once= bse.main matches 0 run data modify storage bse:text settings[32]."color" set value "dark_gray"
execute if score filter.trial_spawner.ominous_config.per_player_mobs_at_once_bonus= bse.main matches 0 run data modify storage bse:text settings[33]."color" set value "dark_gray"

tellraw @s {type:"nbt", source:"storage", nbt:"settings", storage:"bse:text", interpret:true}
