#initialization
scoreboard players set stick_use= bse.main -1
schedule function bse:error_prevention/max_command_chain_limit_reached 1t

#raycast to find spawner
scoreboard players set dist= bse.main 0
execute unless predicate bse:has_wand anchored eyes run function bse:use_tool/find_spawner
execute if score dist= bse.main matches 500.. run scoreboard players set stick_use= bse.main -2
scoreboard players reset dist= bse.main

#backing up spawner list
function bse:backup/create

#providing feedback based on what operation was used
execute at @s unless predicate bse:has_wand run function bse:use_tool/feedback

#termination
schedule clear bse:error_prevention/max_command_chain_limit_reached
advancement revoke @s only bse:use_tool