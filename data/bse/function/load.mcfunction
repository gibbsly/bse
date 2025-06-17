#adding scoreboards
scoreboard objectives add bse.request trigger
#scoreboard objectives add bse.settings trigger
scoreboard objectives add bse.main dummy
scoreboard objectives add bse.temp dummy
scoreboard objectives add bse.num dummy
scoreboard objectives add bse.id dummy

#initializing scores
scoreboard players set #installed bse.main 1
execute unless score current_id= bse.main matches -2147483648.. run scoreboard players set current_id= bse.main -1
execute unless score current_version= bse.main matches -2147483648.. run scoreboard players set current_version= bse.main 0
scoreboard players set 10 bse.num 10
scoreboard players set 16 bse.num 16

execute unless score filter.spawner.player_range= bse.main matches -2147483648.. run scoreboard players set filter.spawner.player_range= bse.main 1
execute unless score filter.spawner.spawn_range= bse.main matches -2147483648.. run scoreboard players set filter.spawner.spawn_range= bse.main 1
execute unless score filter.spawner.max_spawn_delay= bse.main matches -2147483648.. run scoreboard players set filter.spawner.max_spawn_delay= bse.main 1
execute unless score filter.spawner.min_spawn_delay= bse.main matches -2147483648.. run scoreboard players set filter.spawner.min_spawn_delay= bse.main 1
execute unless score filter.spawner.max_nearby= bse.main matches -2147483648.. run scoreboard players set filter.spawner.max_nearby= bse.main 1
execute unless score filter.spawner.count= bse.main matches -2147483648.. run scoreboard players set filter.spawner.count= bse.main 1

execute unless score filter.trial_spawner.cooldown= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.cooldown= bse.main 1
execute unless score filter.trial_spawner.player_range= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.player_range= bse.main 1

execute unless score filter.trial_spawner.normal_config.ticks_between_spawns= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.normal_config.ticks_between_spawns= bse.main 1
execute unless score filter.trial_spawner.normal_config.spawn_range= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.normal_config.spawn_range= bse.main 1
execute unless score filter.trial_spawner.normal_config.total_mobs= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.normal_config.total_mobs= bse.main 1
execute unless score filter.trial_spawner.normal_config.per_player_total_mobs_bonus= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.normal_config.per_player_total_mobs_bonus= bse.main 1
execute unless score filter.trial_spawner.normal_config.mobs_at_once= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.normal_config.mobs_at_once= bse.main 1
execute unless score filter.trial_spawner.normal_config.per_player_mobs_at_once_bonus= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.normal_config.per_player_mobs_at_once_bonus= bse.main 1

execute unless score filter.trial_spawner.ominous_config.ticks_between_spawns= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.ominous_config.ticks_between_spawns= bse.main 1
execute unless score filter.trial_spawner.ominous_config.spawn_range= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.ominous_config.spawn_range= bse.main 1
execute unless score filter.trial_spawner.ominous_config.total_mobs= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.ominous_config.total_mobs= bse.main 1
execute unless score filter.trial_spawner.ominous_config.per_player_total_mobs_bonus= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.ominous_config.per_player_total_mobs_bonus= bse.main 1
execute unless score filter.trial_spawner.ominous_config.mobs_at_once= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.ominous_config.mobs_at_once= bse.main 1
execute unless score filter.trial_spawner.ominous_config.per_player_mobs_at_once_bonus= bse.main matches -2147483648.. run scoreboard players set filter.trial_spawner.ominous_config.per_player_mobs_at_once_bonus= bse.main 1

#storage setup
data merge storage bse:main {back:[],current:{},old:{},temp:{}}

#placing sign for text resolution and shulker box for item generation
forceload add 29999999 6452069
setblock 29999999 0 6452069 minecraft:shulker_box
setblock 29999999 1 6452069 minecraft:oak_sign

#team
team add bse_nocul
team modify bse_nocul collisionRule pushOtherTeams

schedule function bse:spawn_horses 40t
gamerule maxCommandChainLength 16777216
gamerule commandBlockOutput false