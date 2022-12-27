# Bulk Spawner Editor Utility

## General information
This is a utility that adds some additional functionality to the debug stick when used on spawners. [You can obtain a debug stick with `/give @s minecraft:debug_stick`] 

I have a video explaining what this does and how to use it [here](https://youtu.be/mI8nApNMD48). (Outdated somewhat, generally it is correct though)

## Using a debug stick on a spawner
With this pack installed, right clicking a spawner with a debug stick will do a few different things.
### Registration
If you haven't right clicked the spawner yet, it will register the spawner into the system.

If there is an identical spawner in the system already, it will register this spawner with that id.

The spawner will gain a nametag that displays the ID. The text is visible if you are within 10 blocks of it with a debug stick in your inventory.

### Give
If you right click a registered spawner it will give you the command block to place a new one. [[spawner item format here]](https://github.com/gibbsly/bse/tree/entityless#spawner-item-format)

### Update
If you right click a registered spawner while sneaking, you can update all spawners of that id of to match this one. 

You can modify spawners by either placing a new one with setblock, or doing data modify/merge. The marker will stay in the world as long as you are within 10 blocks of where the spawner used to be, so you can break the spawner block to replace it if needed. 

### Un-register
If you left click a spawner while sneaking it will remove that spawner from the registry of spawners with that ID. This allows you to un-register a spawner, change the spawner however you want and then re-register the spawner without having to go out of range of the marker entity.

## Request trigger
There are a few things you can activate by triggering `bse.request` and setting it to a value.
### Give spawner
If you trigger a request to a valid spawner ID, you will receive a [command block to place a spawner with that ID](https://github.com/gibbsly/bse/tree/entityless#spawner-item-format).
### Search
If you trigger the value -53 you will run the [search function](https://github.com/gibbsly/bse/tree/entityless#search-function).

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
  * Max Block Light: X (the maximum block light that this mob can spawn in)
  * Max Sky Light: X (the maximum sky light that this mob can spawn in)
### Problems/Feedback/Errors
If you have any problems or feedback, file an issue on this repository and I will try to get it resolved as soon as I can.

If you have anything you want to be added I can see if I can make it work, but I will not guarantee any new features. 

### Search function
This searches a selected area for spawners, you can select the area you wish to search by using a clock. Left clicking a block with a clock will set the first position and right clicking a block with a clock will set the second position. 

Once you have made your selection you can run the command `/function bse:large_search` or [trigger a request](https://github.com/gibbsly/bse/tree/entityless#request-trigger) at -59 again to run the scan. 

### Prime all
Running the function `bse:prime_all_spawners` sets the delay of all registered spawners to 0.

### Unmarking all
Running the function `bse:unmark_all_spawners` un-registeres all spawners, this probably isn't useful but is run during the uninstall function.

### Uninstall
To remove this pack from the world I recommend running the uninstall function (`/function bse:uninstall`) This removes the storage data as well as the scoreboards. When you run it be sure to close out of the world and delete the datapack. All marker entities will die by themselves, so you don't need to worry about extra entities. 

### Use
This is a free to use utility that is made mostly for mapmaking development, it is optional to credit me.