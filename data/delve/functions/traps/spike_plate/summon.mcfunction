# Description: Creates a new dungeon pendulum trap entity

# Executed by the player

$execute align xyz positioned ~.5 ~0 ~.5 run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],CustomName:{"text":"Dungeon Spike Plate"},Tags:["Delve","trap","spike_plate",$(state),"objmc","init","dir_1"],item:{id:"minecraft:potion",Count:1,tag:{CustomModelData:2550104,CustomPotionColor:83886013}},item_display:"ground",transformation:{translation:[0f,1.5f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}

scoreboard players set @e[type=item_display,distance=..1,tag=init] dlv_ai_clock -1

tag @e[type=item_display,distance=..1,tag=init] remove init