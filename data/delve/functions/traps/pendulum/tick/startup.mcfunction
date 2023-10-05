# Description: Handles all logic for active pendulums

# Executed by the pendulum display_item entity

scoreboard objectives add local dummy
scoreboard players set .frame_count local 80

# -- Synchronize the clock with the animation once every loop -- #
function delve:traps/pendulum/get_frame
scoreboard players operation @s dlv_ai_clock = .frame_time local

scoreboard players operation .clock_time local = @s dlv_ai_clock
scoreboard players operation .clock_time local %= .frame_count local

execute if score .frame_time local matches 0 run data modify entity @s item.tag.CustomPotionColor set from entity @s item.tag.FrameOffset
execute if score .frame_time local matches 0 run tag @s remove INACTIVE
execute if score .frame_time local matches 0 run tag @s add ACTIVE
execute if score .frame_time local matches 0 run tag @s remove STARTING
execute if score .frame_time local matches 0 run playsound minecraft:block.note_block.banjo master sifitis

scoreboard objectives remove local