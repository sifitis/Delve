# Description: Creates a new dungeon pendulum trap entity

# Executed by the player

scoreboard objectives add local dummy
scoreboard players set .look_dir local 0
execute as @s[y_rotation=-135..-45] run scoreboard players set .look_dir local 1
execute as @s[y_rotation=-45..45] run scoreboard players set .look_dir local 0
execute as @s[y_rotation=45..135] run scoreboard players set .look_dir local 1

$scoreboard players set .frame_offset local $(frame)

$execute if score .look_dir local matches 0 if score .frame_offset local matches ..8388607 align xyz positioned ~.5 ~0 ~.5 run summon item_display ~ ~ ~ {Rotation:[0.0f,0.0f],CustomName:{"text":"Dungeon Pendulum"},Tags:["Delve","trap","pendulum","ACTIVE","objmc","init","dir_0"],item:{id:"minecraft:potion",Count:1,tag:{CustomModelData:2550103,CustomPotionColor:$(frame),FrameOffset:$(frame)}},item_display:"ground",transformation:{translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}
$execute if score .look_dir local matches 1 if score .frame_offset local matches ..8388607 align xyz positioned ~.5 ~0 ~.5 run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],CustomName:{"text":"Dungeon Pendulum"},Tags:["Delve","trap","pendulum","ACTIVE","objmc","init","dir_1"],item:{id:"minecraft:potion",Count:1,tag:{CustomModelData:2550103,CustomPotionColor:$(frame),FrameOffset:$(frame)}},item_display:"ground",transformation:{translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}
$execute if score .look_dir local matches 0 if score .frame_offset local matches 8388607.. align xyz positioned ~.5 ~0 ~.5 run summon item_display ~ ~ ~ {Rotation:[0.0f,0.0f],CustomName:{"text":"Dungeon Pendulum"},Tags:["Delve","trap","pendulum","INACTIVE","objmc","init","dir_0"],item:{id:"minecraft:potion",Count:1,tag:{CustomModelData:2550103,CustomPotionColor:$(frame),FrameOffset:$(frame)}},item_display:"ground",transformation:{translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}
$execute if score .look_dir local matches 1 if score .frame_offset local matches 8388607.. align xyz positioned ~.5 ~0 ~.5 run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],CustomName:{"text":"Dungeon Pendulum"},Tags:["Delve","trap","pendulum","INACTIVE","objmc","init","dir_1"],item:{id:"minecraft:potion",Count:1,tag:{CustomModelData:2550103,CustomPotionColor:$(frame),FrameOffset:$(frame)}},item_display:"ground",transformation:{translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}

$scoreboard players set @e[type=item_display,distance=..1,tag=init,tag=pendulum] dlv_ai_clock $(frame)

scoreboard objectives remove local