#adding scoreboards
scoreboard objectives add bse.request trigger
scoreboard objectives add bse.main dummy
scoreboard objectives add bse.temp dummy
scoreboard objectives add bse.num dummy
scoreboard objectives add bse.id dummy

#initializing scores
scoreboard players set #installed bse.main 1
execute unless score current_id= bse.main matches -2147483648.. run scoreboard players set current_id= bse.main -1
execute unless score current_version= bse.main matches -2147483648.. run scoreboard players set current_version= bse.main 0
scoreboard players set 10 bse.num 10

#storage setup
data merge storage bse:main {back:[],current:{},old:{},temp:{}}

#placing sign for text resolution and shulker box for item generation
forceload add 29999999 6452069
setblock 29999999 0 6452069 minecraft:shulker_box
setblock 29999999 1 6452069 minecraft:oak_sign

#team
team add bse_nocul
team modify bse_nocul collisionRule pushOtherTeams

#right click detection horses
execute unless entity 627365-0-0-0-10 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,16],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-11 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,17],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-12 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,18],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-13 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,19],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-14 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,20],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-15 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,21],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-16 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,22],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-17 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,23],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-18 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,24],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-19 run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,25],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-1A run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,26],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-1B run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,27],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-1C run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,28],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-1D run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,29],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-1E run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,30],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}
execute unless entity 627365-0-0-0-1F run summon horse 29999999 0 6452069 {Tags:[bse.horse],DeathLootTable:"",Team:"bse_nocul",UUID:[I;6452069,0,0,31],Invulnerable:1b,Silent:1b,NoAI:1b,ActiveEffects: [{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 11, Amplifier: 10b},{Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 19999958, Id: 14, Amplifier: 0b}]}