# Description: Main function for identifying and selecting the relevant entities in the interaction; deconstruct interaction after completion.

# Executed as the player who triggered the Interaction Entity (IE)

# -- Select the interacting player and IE and tag them -- #
tag @s add iet_player
execute as @e[type=interaction,distance=..10] run function iet:filter_ie

# -- Pull the function path for the IE from the CustomName field as a substring ({"text":"words"} -> "words")-- #
data modify storage temp:ie interact_path set string entity @s CustomName 9 -2

# -- Run the interaction function for the IE if the clickType is correct -- #
execute if score clickType iet matches 0 at @a[tag=iet_player] as @e[type=minecraft:interaction,distance=..10,tag=iet_ie] unless entity @s[tag=ietIgnoreLeft] at @s run function delve:util/iet/execute_interaction_path with storage temp:ie interact_path
execute if score clickType iet matches 1 as @a[tag=iet_player] as @e[type=minecraft:interaction,distance=..10,tag=iet_ie] unless entity @s[tag=ietIgnoreRight] at @s run function delve:util/iet/execute_interaction_path with storage temp:ie interact_path

# -- Deconstruct the interaction variables -- #
tag @s remove iet_player
tag @e[tag=iet_ie] remove iet_ie
scoreboard objectives remove iet