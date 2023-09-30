scoreboard objectives add local dummy
scoreboard players set look_dir local 0
execute as @s[y_rotation=-135..-45] run scoreboard players set look_dir local 1
execute as @s[y_rotation=-45..45] run scoreboard players set look_dir local 2
execute as @s[y_rotation=45..135] run scoreboard players set look_dir local 3

execute if score look_dir local matches 0 align xyz positioned ~.5 ~ ~-.4 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}
execute if score look_dir local matches 1 align xyz positioned ~1.4 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}
execute if score look_dir local matches 2 align xyz positioned ~.5 ~ ~1.4 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}
execute if score look_dir local matches 3 align xyz positioned ~-.4 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:1,height:2,CustomName:'{"text":"delve:interactables/doors/stone_door_small/interact"}',Tags:["Delve","stone_door_small"]}

execute if score look_dir local matches 0 align xyz positioned ~.5 ~0.5 ~-.5 run summon item_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],item:{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:2550701}},item_display:"ground",interpolation_duration:0,start_interpolation:0,transformation:{translation:[0f,0f,0.25f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[4f,4f,4f],right_rotation:[0f,0f,0f,1f]},Rotation:[0.0f,0.0f]}
execute if score look_dir local matches 1 align xyz positioned ~1.5 ~0.5 ~.5 run summon item_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],item:{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:2550701}},item_display:"ground",interpolation_duration:0,start_interpolation:0,transformation:{translation:[0f,0f,0.25f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[4f,4f,4f],right_rotation:[0f,0f,0f,1f]},Rotation:[90.0f,0.0f]}
execute if score look_dir local matches 2 align xyz positioned ~.5 ~0.5 ~1.5 run summon item_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],item:{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:2550701}},item_display:"ground",interpolation_duration:0,start_interpolation:0,transformation:{translation:[0f,0f,0.25f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[4f,4f,4f],right_rotation:[0f,0f,0f,1f]},Rotation:[180.0f,0.0f]}
execute if score look_dir local matches 3 align xyz positioned ~-.5 ~0.5 ~.5 run summon item_display ~ ~ ~ {Tags:["Delve","stone_door_small_disp"],item:{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:2550701}},item_display:"ground",interpolation_duration:0,start_interpolation:0,transformation:{translation:[0f,0f,0.25f],left_rotation:{angle:0f,axis:[1f,0f,0f]},scale:[4f,4f,4f],right_rotation:[0f,0f,0f,1f]},Rotation:[270.0f,0.0f]}

execute if score look_dir local matches 0 align xyz positioned ~.5 ~0.5 ~-.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air
execute if score look_dir local matches 1 align xyz positioned ~1.5 ~0.5 ~.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air
execute if score look_dir local matches 2 align xyz positioned ~.5 ~0.5 ~1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air
execute if score look_dir local matches 3 align xyz positioned ~-.5 ~0.5 ~.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:barrier replace minecraft:air

scoreboard objectives remove local