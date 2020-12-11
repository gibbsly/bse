# Bulk Spawner Editor Utility

This is a utility that adds some additional functionality to the debug stick when used on spawners. [You can obtain a debug stick with `/give @s minecraft:debug_stick`] 

I have a video explaining what this does and how to use it [here](https://youtu.be/xoJxAN-UPQQ)

## With this pack installed, right clicking a spawner with a debug stick will do a few different things.
### Initialization
If you haven't right clicked the spawner yet, it will initialize the spawner into the system.

If there is an identical spawner in the system already, it will initialize this spawner with that id.

The spawner will gain a nametag that displays the ID. The text is visible if you are within 10 blocks of it with a debug stick in your mainhand or offhand.

You will also receive a command block that can place a spawner with that ID, the lore of the command block has various details of the spawner it will place. [spawner item format here](https://github.com/gibbsly/bse#spawner-item-format)

### Give
If you right click an initialized spawner it will give you the command block to place a new one, what that command block looks like is [here](https://github.com/gibbsly/bse#spawner-item-format)

### Update
If you right click an initialized spawner while sneaking, you can update all spawners of that id of to match this one. 

You can modify spawners by either placing a new one with setblock, or doing data modify/merge. The marker will stay in the world as long as you are within 10 blocks of where the spawner used to be, so you can break the spawner block to replace it if needed. 

## Other information
### Spawner item format
The format that the spawner item that you are given is listed below
* General properties: (spawner configuration values)
  * Player Range: X (the distance a player has to be from the spawner to activate it)
  * Spawn Range: X (the maximum distance from the spawner an entity it spawns can spawn)
  * Max Delay: X (the maximum time in ticks before the spawner spawns a new entity)
  * Min Delay: X (the minimum time in ticks before the spawner spawns a new entity)
  * Max Nearby: X (the maximum amount of entities that can be nearby the spawner before it stops spawning new entities)
  * Count: X (the maximum amount of entities this spawner can spawn at once)
* List of spawnable entities: (a list of all entities in the spawn potentials array)
  * Entity: minecraft:entity (the minecraft id of the entity)
  * Weight: X (the chance that this entity will be selected to spawn)
  * Name: name (if available, the name of the entity)
### Problems/Feedback/Errors
If you have any problems or feedback, file an issue on this repository and I will try to get it resolved as soon as I can.,

If you have anything you want to be added I can see if I can make it work, but I will not guarantee any new features. 

There are a few errors that I check for in this pack, I have causes and solutions listed here
* Couldn't locate spawner! Try again - This error occurs when you are either too far away from a spawner, or are aiming at an odd angle so the raycast that locates a spawner doesn't actually hit it. If you get this error, just get closer to the spawner, or aim more in the center of the block
* Maximum command chain Limit reached - This error probably will never happen, but if it does it means that there might be too many spawners int the system, or you modified the maxCommandChainLength gamerule to a lower value than default, if you get this error there will be a chat message that has a command you can click to change it to a recommended value

### Uninstall
To remove this pack from the world I recommend running the uninstall function (`/function bse:uninstall`) This removes the storage data as well as the scoreboards. When you run it be sure to close out of the world and delete the datapack. All marker entities will die by themselves, so you don't need to worry about extra entities. 

### Use
This is a free to use utility that is made mostly for mapmaking development, it is optional to credit me.
