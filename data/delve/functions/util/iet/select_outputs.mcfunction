execute store result score bid iet run scoreboard players get @s iet_ids

execute if score bid iet matches 0 run scoreboard players set bFail iet 1

#Long range

execute unless score bFail iet matches 1.. if entity @s[tag=ietLongRange] as @e[tag=ietOutput] store result score @s iet run scoreboard players get @s iet_ids
execute unless score bFail iet matches 1.. if entity @s[tag=ietLongRange] as @e[tag=ietOutput] at @s if score @s iet = bid iet run function iet:trigger_outputs

#Short range

execute unless score bFail iet matches 1.. unless entity @s[tag=ietLongRange] as @e[tag=ietOutput,distance=..32] store result score @s iet run scoreboard players get @s iet_ids
execute unless score bFail iet matches 1.. unless entity @s[tag=ietLongRange] as @e[tag=ietOutput,distance=..32] at @s if score @s iet = bid iet run function iet:trigger_outputs
