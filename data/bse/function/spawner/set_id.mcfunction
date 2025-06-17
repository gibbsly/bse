execute if block ~ ~ ~ spawner if data block ~ ~ ~ SpawnData unless data block ~ ~ ~ SpawnPotentials[0] run function bse:util/ctc/fix_potentials

execute if block ~ ~ ~ spawner store result block ~ ~ ~ SpawnPotentials[0].data.entity."bse:id" int 1 run scoreboard players get bse_id= bse.temp
execute if block ~ ~ ~ trial_spawner store result block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id" int 1 run scoreboard players get bse_id= bse.temp