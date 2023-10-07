




$execute store result score .frame_time $(objective) run time query gametime

$scoreboard players set c_24000 $(objective) 24000
$scoreboard players operation .frame_time $(objective) %= c_24000 $(objective)

#$scoreboard players operation .frame_time $(objective) -= .frame_offset $(start_frame)

$scoreboard players operation .frame_time $(objective) %= .frame_count $(objective)

$scoreboard players operation .set_frame_time $(objective) = .frame_time $(objective)

$scoreboard players set .start_frame $(objective) $(start_frame)
$scoreboard players operation .set_frame_time $(objective) += .start_frame $(objective) 

$execute store result entity @s item.tag.CustomPotionColor int 1.0 run scoreboard players get .set_frame_time $(objective)