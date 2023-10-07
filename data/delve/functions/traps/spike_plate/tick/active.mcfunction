# Description: Handles all logic for active spike_plates

# Executed by the spike_plates display_item entity

execute if score @s dlv_ai_clock matches 0.. run scoreboard players remove @s dlv_ai_clock 1

execute if score @s dlv_ai_clock matches ..-1 align xyz if entity @e[dx=0,dy=1,dz=0] run scoreboard players set @s dlv_ai_clock 120
execute if score @s dlv_ai_clock matches 120 run playsound minecraft:item.crossbow.quick_charge_3 master @a

scoreboard objectives add local_spike_plate_active dummy
#scoreboard players operation .clock_time local_spike_plate_active = @s dlv_ai_clock
scoreboard players set .frame_count local_spike_plate_active 5
#scoreboard players operation .clock_time local_spike_plate_active %= .frame_count local_spike_plate_active


# -- Synchronize the clock with the animation once every loop -- #
execute if score @s dlv_ai_clock matches 80 run function delve:traps/spike_plate/set_frame {"objective":local_spike_plate_active,"start_frame":4}
execute if score @s dlv_ai_clock matches 80 run playsound minecraft:item.crossbow.hit master @a

execute if score @s dlv_ai_clock matches 0 run data modify entity @s item.tag.CustomPotionColor set value 8388612
execute if score @s dlv_ai_clock matches 79 run data modify entity @s item.tag.CustomPotionColor set value 8388608
execute if score @s dlv_ai_clock matches 1 run function delve:traps/spike_plate/set_frame {"objective":local_spike_plate_active,"start_frame":3}

execute if score @s dlv_ai_clock matches 1..80 align xyz as @e[tag=!trap,distance=..15,dx=0,dy=1,dz=0] run scoreboard players set @s local_spike_plate_active 1

#execute if score .clock_time local_spike_plate_active matches 0 run scoreboard players operation @s dlv_ai_clock = .frame_time local_spike_plate_active

#execute if entity @s[tag=STOPPING] if score .clock_time local_spike_plate_active matches 0 run data modify entity @s item.tag.CustomPotionColor set value 8388608
#execute if entity @s[tag=STOPPING] if score .clock_time local_spike_plate_active matches 0 run tag @s remove ACTIVE
#execute if entity @s[tag=STOPPING] if score .clock_time local_spike_plate_active matches 0 run tag @s add INACTIVE
#execute if entity @s[tag=STOPPING] if score .clock_time local_spike_plate_active matches 0 run tag @s remove STOPPING

# ---- Play fancy sound effects ---- #

# -- Damage players -- #
execute as @a[distance=..15,gamemode=!survival,gamemode=!spectator] run scoreboard players set @s local_spike_plate_active 0
execute as @e[distance=..15,scores={local_spike_plate_active=1}] run damage @s 10 minecraft:generic_kill by @s

scoreboard objectives remove local_spike_plate_active