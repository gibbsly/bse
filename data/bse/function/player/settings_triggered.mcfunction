execute if score @s bse.settings matches 100 run scoreboard players add filter.spawner.player_range= bse.main 1
execute if score @s bse.settings matches 101 run scoreboard players add filter.spawner.spawn_range= bse.main 1
execute if score @s bse.settings matches 102 run scoreboard players add filter.spawner.max_spawn_delay= bse.main 1
execute if score @s bse.settings matches 103 run scoreboard players add filter.spawner.min_spawn_delay= bse.main 1
execute if score @s bse.settings matches 104 run scoreboard players add filter.spawner.max_nearby= bse.main 1
execute if score @s bse.settings matches 105 run scoreboard players add filter.spawner.count= bse.main 1
execute if score @s bse.settings matches 200 run scoreboard players add filter.trial_spawner.cooldown= bse.main 1
execute if score @s bse.settings matches 201 run scoreboard players add filter.trial_spawner.player_range= bse.main 1
execute if score @s bse.settings matches 300 run scoreboard players add filter.trial_spawner.normal_config.ticks_between_spawns= bse.main 1
execute if score @s bse.settings matches 301 run scoreboard players add filter.trial_spawner.normal_config.spawn_range= bse.main 1
execute if score @s bse.settings matches 302 run scoreboard players add filter.trial_spawner.normal_config.total_mobs= bse.main 1
execute if score @s bse.settings matches 303 run scoreboard players add filter.trial_spawner.normal_config.per_player_total_mobs_bonus= bse.main 1
execute if score @s bse.settings matches 304 run scoreboard players add filter.trial_spawner.normal_config.mobs_at_once= bse.main 1
execute if score @s bse.settings matches 305 run scoreboard players add filter.trial_spawner.normal_config.per_player_mobs_at_once_bonus= bse.main 1
execute if score @s bse.settings matches 400 run scoreboard players add filter.trial_spawner.ominous_config.ticks_between_spawns= bse.main 1
execute if score @s bse.settings matches 401 run scoreboard players add filter.trial_spawner.ominous_config.spawn_range= bse.main 1
execute if score @s bse.settings matches 402 run scoreboard players add filter.trial_spawner.ominous_config.total_mobs= bse.main 1
execute if score @s bse.settings matches 403 run scoreboard players add filter.trial_spawner.ominous_config.per_player_total_mobs_bonus= bse.main 1
execute if score @s bse.settings matches 404 run scoreboard players add filter.trial_spawner.ominous_config.mobs_at_once= bse.main 1
execute if score @s bse.settings matches 405 run scoreboard players add filter.trial_spawner.ominous_config.per_player_mobs_at_once_bonus= bse.main 1
execute if score @s bse.settings matches 999 run function bse:player/settings/reset

execute if score filter.spawner.player_range= bse.main matches 2.. run scoreboard players set filter.spawner.player_range= bse.main 0
execute if score filter.spawner.spawn_range= bse.main matches 2.. run scoreboard players set filter.spawner.spawn_range= bse.main 0
execute if score filter.spawner.max_spawn_delay= bse.main matches 2.. run scoreboard players set filter.spawner.max_spawn_delay= bse.main 0
execute if score filter.spawner.min_spawn_delay= bse.main matches 2.. run scoreboard players set filter.spawner.min_spawn_delay= bse.main 0
execute if score filter.spawner.max_nearby= bse.main matches 2.. run scoreboard players set filter.spawner.max_nearby= bse.main 0
execute if score filter.spawner.count= bse.main matches 2.. run scoreboard players set filter.spawner.count= bse.main 0
execute if score filter.trial_spawner.cooldown= bse.main matches 2.. run scoreboard players set filter.trial_spawner.cooldown= bse.main 0
execute if score filter.trial_spawner.player_range= bse.main matches 2.. run scoreboard players set filter.trial_spawner.player_range= bse.main 0
execute if score filter.trial_spawner.normal_config.ticks_between_spawns= bse.main matches 2.. run scoreboard players set filter.trial_spawner.normal_config.ticks_between_spawns= bse.main 0
execute if score filter.trial_spawner.normal_config.spawn_range= bse.main matches 2.. run scoreboard players set filter.trial_spawner.normal_config.spawn_range= bse.main 0
execute if score filter.trial_spawner.normal_config.total_mobs= bse.main matches 2.. run scoreboard players set filter.trial_spawner.normal_config.total_mobs= bse.main 0
execute if score filter.trial_spawner.normal_config.per_player_total_mobs_bonus= bse.main matches 2.. run scoreboard players set filter.trial_spawner.normal_config.per_player_total_mobs_bonus= bse.main 0
execute if score filter.trial_spawner.normal_config.mobs_at_once= bse.main matches 2.. run scoreboard players set filter.trial_spawner.normal_config.mobs_at_once= bse.main 0
execute if score filter.trial_spawner.normal_config.per_player_mobs_at_once_bonus= bse.main matches 2.. run scoreboard players set filter.trial_spawner.normal_config.per_player_mobs_at_once_bonus= bse.main 0
execute if score filter.trial_spawner.ominous_config.ticks_between_spawns= bse.main matches 2.. run scoreboard players set filter.trial_spawner.ominous_config.ticks_between_spawns= bse.main 0
execute if score filter.trial_spawner.ominous_config.spawn_range= bse.main matches 2.. run scoreboard players set filter.trial_spawner.ominous_config.spawn_range= bse.main 0
execute if score filter.trial_spawner.ominous_config.total_mobs= bse.main matches 2.. run scoreboard players set filter.trial_spawner.ominous_config.total_mobs= bse.main 0
execute if score filter.trial_spawner.ominous_config.per_player_total_mobs_bonus= bse.main matches 2.. run scoreboard players set filter.trial_spawner.ominous_config.per_player_total_mobs_bonus= bse.main 0
execute if score filter.trial_spawner.ominous_config.mobs_at_once= bse.main matches 2.. run scoreboard players set filter.trial_spawner.ominous_config.mobs_at_once= bse.main 0
execute if score filter.trial_spawner.ominous_config.per_player_mobs_at_once_bonus= bse.main matches 2.. run scoreboard players set filter.trial_spawner.ominous_config.per_player_mobs_at_once_bonus= bse.main 0

execute if score @s bse.settings matches -1.. run function bse:player/settings/menu
scoreboard players set @s bse.settings -2