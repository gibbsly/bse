execute if data block ~ ~ ~ SpawnData unless data block ~ ~ ~ SpawnPotentials[0] run function bse:util/ctc/fix_potentials

data modify storage bse:main current set value {}
data modify storage bse:main current set from block ~ ~ ~

data remove storage bse:main current.x
data remove storage bse:main current.y
data remove storage bse:main current.z
data remove storage bse:main current.id
data remove storage bse:main current.Delay
data remove storage bse:main current.SpawnData.entity."bse:id"
data remove storage bse:main current.SpawnPotentials[].data.entity."bse:id"

data remove storage bse:main current.spawn_data.data.entity."bse:id"
data remove storage bse:main current.normal_config.spawn_potentials[].data.entity."bse:id"
data remove storage bse:main current.registered_players
data remove storage bse:main current.current_mobs
data remove storage bse:main current.cooldown_ends_at
data remove storage bse:main current.total_mobs_spawned
data remove storage bse:main current.ejecting_loot_table
data remove storage bse:main current.next_mob_spawns_at

execute if score filter.spawner.player_range= bse.main matches 0 run data remove storage bse:main current.RequiredPlayerRange
execute if score filter.spawner.spawn_range= bse.main matches 0 run data remove storage bse:main current.SpawnRange
execute if score filter.spawner.max_spawn_delay= bse.main matches 0 run data remove storage bse:main current.MaxSpawnDelay
execute if score filter.spawner.min_spawn_delay= bse.main matches 0 run data remove storage bse:main current.MinSpawnDelay
execute if score filter.spawner.max_nearby= bse.main matches 0 run data remove storage bse:main current.MaxNearbyEntities
execute if score filter.spawner.count= bse.main matches 0 run data remove storage bse:main current.SpawnCount

execute if score filter.trial_spawner.cooldown= bse.main matches 0 run data remove storage bse:main current.target_cooldown_length
execute if score filter.trial_spawner.player_range= bse.main matches 0 run data remove storage bse:main current.required_player_range

execute if score filter.trial_spawner.normal_config.ticks_between_spawns= bse.main matches 0 run data remove storage bse:main current.normal_config.ticks_between_spawn
execute if score filter.trial_spawner.normal_config.spawn_range= bse.main matches 0 run data remove storage bse:main current.normal_config.spawn_range
execute if score filter.trial_spawner.normal_config.total_mobs= bse.main matches 0 run data remove storage bse:main current.normal_config.total_mobs
execute if score filter.trial_spawner.normal_config.per_player_total_mobs_bonus= bse.main matches 0 run data remove storage bse:main current.normal_config.total_mobs_added_per_player
execute if score filter.trial_spawner.normal_config.mobs_at_once= bse.main matches 0 run data remove storage bse:main current.normal_config.simultaneous_mobs
execute if score filter.trial_spawner.normal_config.per_player_mobs_at_once_bonus= bse.main matches 0 run data remove storage bse:main current.normal_config.simultaneous_mobs_added_per_player

execute if score filter.trial_spawner.ominous_config.ticks_between_spawns= bse.main matches 0 run data remove storage bse:main current.ominous_config.ticks_between_spawn
execute if score filter.trial_spawner.ominous_config.spawn_range= bse.main matches 0 run data remove storage bse:main current.ominous_config.spawn_range
execute if score filter.trial_spawner.ominous_config.total_mobs= bse.main matches 0 run data remove storage bse:main current.ominous_config.total_mobs
execute if score filter.trial_spawner.ominous_config.per_player_total_mobs_bonus= bse.main matches 0 run data remove storage bse:main current.ominous_config.total_mobs_added_per_player
execute if score filter.trial_spawner.ominous_config.mobs_at_once= bse.main matches 0 run data remove storage bse:main current.ominous_config.simultaneous_mobs
execute if score filter.trial_spawner.ominous_config.per_player_mobs_at_once_bonus= bse.main matches 0 run data remove storage bse:main current.ominous_config.simultaneous_mobs_added_per_player

# should no longer be needed
# function bse:util/ctc/fix_tag
