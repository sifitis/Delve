# Description: Runs in response to an triggered IE component of a stone_door_small door interactable

# Executed by the triggered stone_door_small IE


# -- Special effects for the door opening -- #
playsound minecraft:ui.toast.challenge_complete block @a[distance=..32] ~ ~ ~ 1 2 0
fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:barrier

# -- Door opening animation -- #
execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run data merge entity @s {transformation:{translation:[0.6f,-0.5f, 0.125f]},interpolation_duration:20,start_interpolation:0}

# -- Schedule door display for deletion by adding a deletion timestamp to a scoreboard and scheduling deletion function for the same timestamp -- #
scoreboard objectives add dlv_stone_door_small_cd dummy
scoreboard players add NUM_QUEUED dlv_stone_door_small_cd 1
execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run tag @s add DELETE_FLAG
execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] store result score @s dlv_stone_door_small_cd run time query gametime
execute as @e[type=block_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run scoreboard players add @s dlv_stone_door_small_cd 40
schedule function delve:interactables/doors/stone_door_small/delete_display 40t append

# -- Delete door IE -- #
kill @e[distance=..1,tag=stone_door_small,tag=Delve]
