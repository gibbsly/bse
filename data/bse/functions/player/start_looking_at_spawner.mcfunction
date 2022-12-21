tag @s add bse.las

scoreboard players add rcm= bse.main 1
execute if score rcm= bse.main matches 16.. run scoreboard players set rcm= bse.main 0

scoreboard players operation @s bse.temp = rcm= bse.main
execute unless score rcm= bse.main matches 0..15 run tag @s remove bse.las

execute if score @s bse.temp matches 00 run effect give 627365-0-0-0-10 resistance 999999 9 true
execute if score @s bse.temp matches 01 run effect give 627365-0-0-0-11 resistance 999999 9 true
execute if score @s bse.temp matches 02 run effect give 627365-0-0-0-12 resistance 999999 9 true
execute if score @s bse.temp matches 03 run effect give 627365-0-0-0-13 resistance 999999 9 true
execute if score @s bse.temp matches 04 run effect give 627365-0-0-0-14 resistance 999999 9 true
execute if score @s bse.temp matches 05 run effect give 627365-0-0-0-15 resistance 999999 9 true
execute if score @s bse.temp matches 06 run effect give 627365-0-0-0-16 resistance 999999 9 true
execute if score @s bse.temp matches 07 run effect give 627365-0-0-0-17 resistance 999999 9 true
execute if score @s bse.temp matches 08 run effect give 627365-0-0-0-18 resistance 999999 9 true
execute if score @s bse.temp matches 09 run effect give 627365-0-0-0-19 resistance 999999 9 true
execute if score @s bse.temp matches 10 run effect give 627365-0-0-0-1A resistance 999999 9 true
execute if score @s bse.temp matches 11 run effect give 627365-0-0-0-1B resistance 999999 9 true
execute if score @s bse.temp matches 12 run effect give 627365-0-0-0-1C resistance 999999 9 true
execute if score @s bse.temp matches 13 run effect give 627365-0-0-0-1D resistance 999999 9 true
execute if score @s bse.temp matches 14 run effect give 627365-0-0-0-1E resistance 999999 9 true
execute if score @s bse.temp matches 15 run effect give 627365-0-0-0-1F resistance 999999 9 true

execute if score @s bse.temp matches 00 run effect give 627365-0-0-0-10 invisibility 999999 0 true
execute if score @s bse.temp matches 01 run effect give 627365-0-0-0-11 invisibility 999999 0 true
execute if score @s bse.temp matches 02 run effect give 627365-0-0-0-12 invisibility 999999 0 true
execute if score @s bse.temp matches 03 run effect give 627365-0-0-0-13 invisibility 999999 0 true
execute if score @s bse.temp matches 04 run effect give 627365-0-0-0-14 invisibility 999999 0 true
execute if score @s bse.temp matches 05 run effect give 627365-0-0-0-15 invisibility 999999 0 true
execute if score @s bse.temp matches 06 run effect give 627365-0-0-0-16 invisibility 999999 0 true
execute if score @s bse.temp matches 07 run effect give 627365-0-0-0-17 invisibility 999999 0 true
execute if score @s bse.temp matches 08 run effect give 627365-0-0-0-18 invisibility 999999 0 true
execute if score @s bse.temp matches 09 run effect give 627365-0-0-0-19 invisibility 999999 0 true
execute if score @s bse.temp matches 10 run effect give 627365-0-0-0-1A invisibility 999999 0 true
execute if score @s bse.temp matches 11 run effect give 627365-0-0-0-1B invisibility 999999 0 true
execute if score @s bse.temp matches 12 run effect give 627365-0-0-0-1C invisibility 999999 0 true
execute if score @s bse.temp matches 13 run effect give 627365-0-0-0-1D invisibility 999999 0 true
execute if score @s bse.temp matches 14 run effect give 627365-0-0-0-1E invisibility 999999 0 true
execute if score @s bse.temp matches 15 run effect give 627365-0-0-0-1F invisibility 999999 0 true