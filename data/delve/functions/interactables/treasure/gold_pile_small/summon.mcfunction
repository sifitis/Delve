# Description: Creates a new gold_pile_small treasure entity

# Executed by the player


execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:1,height:.5,CustomName:'{"text":"delve:interactables/treasure/gold_pile_small/interact"}',Tags:["Delve","gold_pile_small","ietIgnoreLeft"]}
execute align xyz positioned ~.5 ~ ~.5 run summon block_display ~ ~ ~ {Tags:["Delve","gold_pile_small"],block_state:{Name:"minecraft:gold_block",Properties:{}},transformation:[0.7500f,0.0000f,0.0000f,-0.3750f,0.0000f,0.3750f,0.0000f,0.0000f,0.0000f,0.0000f,0.7500f,-0.3750f,0.0000f,0.0000f,0.0000f,1.0000f]}
