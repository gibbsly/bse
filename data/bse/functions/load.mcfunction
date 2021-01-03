#adding scoreboards
scoreboard objectives add bse.search.main dummy
scoreboard objectives add bse.request trigger
scoreboard objectives add bse.version dummy
scoreboard objectives add bse.main dummy
scoreboard objectives add bse.id dummy

#initializing scores
execute unless score current_id= bse.main matches -2147483648.. run scoreboard players set current_id= bse.main -1
execute unless score current_version= bse.main matches -2147483648.. run scoreboard players set current_version= bse.main 0

#storage setup
data merge storage bse:main {back:[],current:{},old:{},temp:{}}

#placing sign for text resolution and shulker box for item generation
forceload add 29999999 6452069
setblock 29999999 0 6452069 minecraft:shulker_box
setblock 29999999 1 6452069 minecraft:oak_sign

#running slow loop function
function bse:slow_loop