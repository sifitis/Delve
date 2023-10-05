




execute store result score .frame_time local run time query gametime

scoreboard players set c_24000 local 24000
scoreboard players operation .frame_time local %= c_24000 local

execute store result score .frame_offset local run data get entity @s item.tag.FrameOffset 1.0
scoreboard players operation .frame_time local -= .frame_offset local

scoreboard players operation .frame_time local %= .frame_count local