




$execute store result score .frame_time $(objective) run time query gametime

$scoreboard players set c_24000 $(objective) 24000
$scoreboard players operation .frame_time $(objective) %= c_24000 $(objective)

$execute store result score .frame_offset $(objective) run data get entity @s item.tag.FrameOffset 1.0
$scoreboard players operation .frame_time $(objective) -= .frame_offset $(objective)

$scoreboard players operation .frame_time $(objective) %= .frame_count $(objective)