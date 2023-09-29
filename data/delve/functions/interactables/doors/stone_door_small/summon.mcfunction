# Description: Manually summons a stone_door_small interactable

# Executed by the player


# -- Doors are directional, so identify whoch direction the player is looking -- #
scoreboard objectives add temp dummy
scoreboard players set look_dir temp 0
execute as @s[y_rotation=-135..-45] run scoreboard players set look_dir temp 1
execute as @s[y_rotation=-45..45] run scoreboard players set look_dir temp 2
execute as @s[y_rotation=45..135] run scoreboard players set look_dir temp 3

# -- Spawn IE just slightly forward of the door -- #
execute if score look_dir temp matches 0 align xyz positioned ~.5 ~ ~-.4 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}
execute if score look_dir temp matches 1 align xyz positioned ~1.4 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}
execute if score look_dir temp matches 2 align xyz positioned ~.5 ~ ~1.4 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}
execute if score look_dir temp matches 3 align xyz positioned ~-.4 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}

# -- Spawn display entity -- #
execute if score look_dir temp matches 0 align xyz positioned ~.5 ~0.5 ~-.5 run summon block_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],block_state:{Name:"minecraft:stone",Properties:{}},interpolation_duration:0,start_interpolation:0,transformation:{translation:[-0.5f,-0.5f,0.125f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[1.0f,2.0f,0.125f],right_rotation:[0f,0f,0f,1f]},Rotation:[0.0f,0.0f]}
execute if score look_dir temp matches 1 align xyz positioned ~1.5 ~0.5 ~.5 run summon block_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],block_state:{Name:"minecraft:stone",Properties:{}},interpolation_duration:0,start_interpolation:0,transformation:{translation:[-0.5f,-0.5f,0.125f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[1.0f,2.0f,0.125f],right_rotation:[0f,0f,0f,1f]},Rotation:[90.0f,0.0f]}
execute if score look_dir temp matches 2 align xyz positioned ~.5 ~0.5 ~1.5 run summon block_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],block_state:{Name:"minecraft:stone",Properties:{}},interpolation_duration:0,start_interpolation:0,transformation:{translation:[-0.5f,-0.5f,0.125f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[1.0f,2.0f,0.125f],right_rotation:[0f,0f,0f,1f]},Rotation:[180.0f,0.0f]}
execute if score look_dir temp matches 3 align xyz positioned ~-.5 ~0.5 ~.5 run summon block_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],block_state:{Name:"minecraft:stone",Properties:{}},interpolation_duration:0,start_interpolation:0,transformation:{translation:[-0.5f,-0.5f,0.125f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[1.0f,2.0f,0.125f],right_rotation:[0f,0f,0f,1f]},Rotation:[270.0f,0.0f]}

# -- Place barrier blocks -- #
execute if score look_dir temp matches 0 align xyz positioned ~.5 ~0.5 ~-.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air
execute if score look_dir temp matches 1 align xyz positioned ~1.5 ~0.5 ~.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air
execute if score look_dir temp matches 2 align xyz positioned ~.5 ~0.5 ~1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air
execute if score look_dir temp matches 3 align xyz positioned ~-.5 ~0.5 ~.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air
