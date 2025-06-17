tag @s remove bse.click

function bse:spawner/get_id
execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 0 run scoreboard players operation id= bse.main = bse_id= bse.temp

execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 0 run function bse:spawner/give
execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 1 run function bse:spawner/update

execute if score has_bse_id= bse.temp matches 0 run function bse:spawner/register