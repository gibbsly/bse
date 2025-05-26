#generating item 
scoreboard players operation id= bse.main = @s bse.id
function bse:util/gs

#replacing item into hand
item replace block 29999999 0 6452069 container.0 with stick
data modify block 29999999 0 6452069 Items[0] merge from storage bse:main item
item replace entity @s weapon.mainhand from block 29999999 0 6452069 container.0

data remove storage bse:main item