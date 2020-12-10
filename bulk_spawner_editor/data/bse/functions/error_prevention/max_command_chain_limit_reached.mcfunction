#loading backup data
function bse:load_backup

#displaying actionbar error message
title @a[advancements={bse:use_tool=true}] actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"text":"☠ Error ☠","color":"red"}," - ",{"text":"Maximum command chain Limit reached","color":"red"}]
#tellraw error message with help command
tellraw @a ["",{"text":"[BSE Debug]:","color":"yellow","bold":true}," ",{"text":"The maximum command chain limit was hit!","color":"red"},"\n ",{"text":"<Click Here to update the maxCommandChainLength gamerule to the recommended value>","color":"aqua","clickEvent":{"action":"run_command","value":"/gamerule maxCommandChainLength 16777216"}}]

advancement revoke @a[advancements={bse:use_tool=true}] only bse:use_tool