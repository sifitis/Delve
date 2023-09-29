
scoreboard players remove NUM_QUEUED dlv_stone_door_small_cd 1
execute store result score CUR_TIME dlv_stone_door_small_cd run time query gametime
execute as @e[type=block_display,tag=stone_door_small_disp,tag=Delve,tag=DELETE_FLAG] if score @s dlv_stone_door_small_cd = CUR_TIME dlv_stone_door_small_cd run kill @s

execute if score NUM_QUEUED dlv_stone_door_small_cd matches ..0 run scoreboard objectives remove dlv_stone_door_small_cd