# checks if a spawner has an id and what it is
# id is -1 if no id found

scoreboard players set has_bse_id= bse.temp 0
scoreboard players set bse_id= bse.temp -1

execute if block ~ ~ ~ spawner store result score has_bse_id= bse.temp if data block ~ ~ ~ SpawnPotentials[0].data.entity."bse:id"
execute if block ~ ~ ~ trial_spawner store result score has_bse_id= bse.temp if data block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"

execute if block ~ ~ ~ spawner if score has_bse_id= bse.temp matches 1 store result score bse_id= bse.temp run data get block ~ ~ ~ SpawnPotentials[0].data.entity."bse:id"
execute if block ~ ~ ~ trial_spawner if score has_bse_id= bse.temp matches 1 store result score bse_id= bse.temp run data get block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"