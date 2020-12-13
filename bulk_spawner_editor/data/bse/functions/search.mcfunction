#starting feedback
tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"text":"Finding spawners, this may take a moment...","color":"green"}]

#error prevention
schedule function bse:error_prevention/max_command_chain_limit_reached 1t

#running search
function bse:search/seek

#backing up spawner list
function bse:backup/create

#error prevention
schedule clear bse:error_prevention/max_command_chain_limit_reached

#ending feedback
tellraw @s ["",{"text":"[BSE]:","color":"yellow","bold":true}," ",{"translate":"Found %s new spawners","with":[{"score":{"objective":"bse.search.main","name":"total="}}],"color":"green"}]