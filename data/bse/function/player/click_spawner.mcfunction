tag @s remove bse.click

execute store result score has_bse_id= bse.temp if data block ~ ~ ~ SpawnData.entity."bse:id"

execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 0 store result score id= bse.main run data get block ~ ~ ~ SpawnData.entity."bse:id"
execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 0 run function bse:spawner/give

execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 1 run function bse:spawner/update

execute if score has_bse_id= bse.temp matches 0 run function bse:spawner/register