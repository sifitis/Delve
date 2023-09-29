playsound minecraft:ui.toast.challenge_complete block @a[distance=..32] ~ ~ ~ 1 2 0

scoreboard objectives add dlv_stone_door_small_cd dummy
scoreboard players add NUM_QUEUED dlv_stone_door_small_cd 1
execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run tag @s add DELETE_FLAG
execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] store result score @s dlv_stone_door_small_cd run time query gametime
execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run scoreboard players add @s dlv_stone_door_small_cd 40
schedule function delve:interactables/doors/stone_door_small/delete_display 40t append

execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run data merge entity @s {transformation:{translation:[0.6f,-0.5f, 0.125f]},interpolation_duration:20,start_interpolation:0}
fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
kill @e[distance=..1,tag=stone_door_small,tag=Delve]