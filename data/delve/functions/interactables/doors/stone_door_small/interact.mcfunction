# Description: Runs in response to an triggered IE component of a stone_door_small door interactable

# Executed by the triggered stone_door_small IE


# -- Special effects for the door opening -- #
playsound delve:doors.stone_door.scraping block @a[distance=..32] ~ ~ ~ 1 1 0
fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:barrier

# -- Door opening animation -- #
particle minecraft:falling_dust minecraft:stone ^.25 ^1.9 ^0.25 0.1 0 0.1 1 10 force
particle minecraft:falling_dust minecraft:stone ^-.25 ^1.9 ^0.25 0.1 0 0.1 1 10 force
execute as @e[type=item_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run data merge entity @s {transformation:{translation:[1f, 0f, 0.25f],scale:[3.96f, 4f, 4f]},interpolation_duration:40,start_interpolation:0}

# -- Schedule door display for deletion by adding a deletion timestamp to a scoreboard and scheduling deletion function for the same timestamp -- #
scoreboard objectives add dlv_stone_door_small_cd dummy
scoreboard players add NUM_QUEUED dlv_stone_door_small_cd 1
execute as @e[type=item_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run tag @s add DELETE_FLAG
execute as @e[type=item_display,distance=..1,tag=stone_door_small_disp,tag=Delve] store result score @s dlv_stone_door_small_cd run time query gametime
execute as @e[type=item_display,distance=..1,tag=stone_door_small_disp,tag=Delve] run scoreboard players add @s dlv_stone_door_small_cd 60
schedule function delve:interactables/doors/stone_door_small/delete_display 60t append

# -- Delete door IE -- #
kill @e[distance=..0.1,tag=stone_door_small,tag=Delve]