# Description: Handles all logic for active pendulums

# Executed by the pendulum display_item entity

scoreboard players add @s dlv_ai_clock 1

scoreboard objectives add local dummy
scoreboard players operation .clock_time local = @s dlv_ai_clock
scoreboard players set .frame_count local 80
scoreboard players operation .clock_time local %= .frame_count local

# -- Synchronize the clock with the animation once every loop -- #
execute if score .clock_time local matches 0 run function delve:traps/pendulum/get_frame
execute if score .clock_time local matches 0 run scoreboard players operation @s dlv_ai_clock = .frame_time local

execute if entity @s[tag=STOPPING] if score .clock_time local matches 0 run data modify entity @s item.tag.CustomPotionColor set value 8388608
execute if entity @s[tag=STOPPING] if score .clock_time local matches 0 run tag @s remove ACTIVE
execute if entity @s[tag=STOPPING] if score .clock_time local matches 0 run tag @s add INACTIVE
execute if entity @s[tag=STOPPING] if score .clock_time local matches 0 run tag @s remove STOPPING

# ---- Play fancy sound effects ---- #

# -- Forward Swing -- #
execute if entity @s[tag=ACTIVE] if score .clock_time local matches 0 run playsound delve:traps.pendulum.whoosh master @a[distance=..15] ^-3 ^ ^ 0.2 1
execute if entity @s[tag=ACTIVE] if score .clock_time local matches 0 run playsound delve:traps.pendulum.whoosh master @a[distance=..15] ^ ^ ^ 0.2 1
execute if entity @s[tag=ACTIVE] if predicate delve:1in3 if score .clock_time local matches 0 run playsound delve:traps.pendulum.ring master @a[distance=..2] ^ ^ ^ 0.1 1.5

# -- Reverse Swing -- #
execute if entity @s[tag=ACTIVE] if score .clock_time local matches 40 run playsound delve:traps.pendulum.whoosh master @a[distance=..15] ^ ^ ^ 0.2 1
execute if entity @s[tag=ACTIVE] if score .clock_time local matches 40 run playsound delve:traps.pendulum.whoosh master @a[distance=..15] ^3 ^ ^ 0.2 1
execute if entity @s[tag=ACTIVE] if predicate delve:1in3 if score .clock_time local matches 40 run playsound delve:traps.pendulum.ring master @a[distance=..2] ^ ^ ^ 0.1 1.5


# -- Racheting Machine Noises -- #
execute if entity @s[tag=ACTIVE] if score .clock_time local matches 0 positioned ~ ~9 ~ run playsound delve:traps.pendulum.clockwork master @a[distance=..8] ~ ~ ~ 0.2 .8


# -- Damage players -- #
scoreboard players add .clock_time local 5
scoreboard players operation .clock_time local %= .frame_count local



execute if entity @s[tag=dir_0] run function delve:traps/pendulum/tick/active/damage_dir_0
execute if entity @s[tag=dir_1] run function delve:traps/pendulum/tick/active/damage_dir_1



execute as @a[distance=..15,gamemode=!survival,gamemode=!spectator] run scoreboard players set @s local 0

execute as @e[distance=..15,scores={local=1}] run damage @s 100 minecraft:generic_kill by @s
scoreboard objectives remove local