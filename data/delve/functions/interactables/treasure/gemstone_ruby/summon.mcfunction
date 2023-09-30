# Description: Creates a new gold_pile_large treasure entity

# Executed by the player

# -- Spawn IE -- #
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:.9,height:.5,CustomName:'{"text":"delve:interactables/treasure/gemstone_ruby/interact"}',Tags:["Delve","treasure","gemstone","ruby","ietIgnoreLeft"]}

# -- Spawn display with orientation based on random val -- #
execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Tags:["Delve","treasure","gemstone","ruby"],item:{id:"minecraft:gold_nugget",Count:1,tag:{CustomModelData:2550603}},item_display:"ground",transformation:{translation:[0f,0.1575f,0f],scale:[0.75f,0.75f,0.75f],left_rotation:{angle:0f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f]}}