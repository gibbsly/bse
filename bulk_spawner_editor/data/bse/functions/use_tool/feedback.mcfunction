##completed action feedback
execute if score stick_use= bse.main matches 0.. run playsound minecraft:block.note_block.pling master @s 1 2 0
#message for a new spawner being created
execute if score stick_use= bse.main matches 0 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"translate":"Creating a new spawner with the ID %s","with":[{"score":{"objective":"bse.main","name":"current_id="}}],"color":"aqua"}]

#message for a spawner being updated
execute if score stick_use= bse.main matches 1 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"translate":"Editing all spawners with the ID %s","with":[{"score":{"objective":"bse.main","name":"edited_id="}}],"color":"aqua"}]

#message for giving the spawner without editing
execute if score stick_use= bse.main matches 2 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"translate":"Giving you the spawner with the ID %s","with":[{"score":{"objective":"bse.main","name":"edited_id="}}],"color":"aqua"}]

#message for registering a duplicate spawner
execute if score stick_use= bse.main matches 3 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"translate":"Found duplicate spawner with ID %s, registering this spawner to that ID","with":[{"score":{"objective":"bse.main","name":"requested_id="}}],"color":"aqua"}]

##error feedback
execute if score stick_use= bse.main matches ..-1 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5 0
#unknown/general error
execute if score stick_use= bse.main matches -1 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"text":"☠ Error ☠","color":"red"}," - ",{"text":"Unknown Error","color":"red"}]

#problem finding spawner
execute if score stick_use= bse.main matches -2 run title @s actionbar ["",{"text":"BSE","color":"yellow"}," - ",{"text":"☠ Error ☠","color":"red"}," - ",{"text":"Couldn't locate spawner! Try again","color":"red"}]