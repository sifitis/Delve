# Description: Called via schedule command from interact function to delete the display entity after animation has completed

# Executed globally


# -- In the event that other doors have been flagged for deletion, we decrement the counter -- #
scoreboard players remove NUM_QUEUED dlv_stone_door_small_cd 1

# -- Get the gametime and compare to any flagged door displays.  If they match, kill the display -- #
execute store result score CUR_TIME dlv_stone_door_small_cd run time query gametime
execute as @e[type=item_display,tag=stone_door_small_disp,tag=Delve,tag=DELETE_FLAG] if score @s dlv_stone_door_small_cd = CUR_TIME dlv_stone_door_small_cd run kill @s

# -- If the queue is now empty, delete the objective to prevent clutter -- #
execute if score NUM_QUEUED dlv_stone_door_small_cd matches ..0 run scoreboard objectives remove dlv_stone_door_small_cd