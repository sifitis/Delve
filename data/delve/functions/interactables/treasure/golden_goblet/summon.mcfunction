# Description: Creates a new gold_pile_large treasure entity

# Executed by the player


# -- Generate random val for orientation -- #
scoreboard objectives add local dummy
execute store result score val local run random value 0..3


execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:.4,height:.6,CustomName:'{"text":"delve:interactables/treasure/golden_goblet/interact"}',Tags:["Delve","golden_goblet","ietIgnoreLeft"]}

# -- Spawn display with orientation based on random val -- #
execute if score val local matches 0 align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Tags:["Delve","golden_goblet"],item:{id:"minecraft:gold_nugget",Count:1,tag:{CustomModelData:2550506}},item_display:"ground",transformation:{translation:[0f,0.225f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}
execute if score val local matches 1 align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {Rotation:[30.0f,0.0f],Tags:["Delve","golden_goblet"],item:{id:"minecraft:gold_nugget",Count:1,tag:{CustomModelData:2550506}},item_display:"ground",transformation:{translation:[0f,0.225f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}
execute if score val local matches 2 align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {Rotation:[60.0f,0.0f],Tags:["Delve","golden_goblet"],item:{id:"minecraft:gold_nugget",Count:1,tag:{CustomModelData:2550506}},item_display:"ground",transformation:{translation:[0f,0.225f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}
execute if score val local matches 3 align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Tags:["Delve","golden_goblet"],item:{id:"minecraft:gold_nugget",Count:1,tag:{CustomModelData:2550506}},item_display:"ground",transformation:{translation:[0f,0.225f,0f],scale:[1.0f,1.0f,1.0f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}

# -- Delete local scoreboard -- #
scoreboard objectives remove local
