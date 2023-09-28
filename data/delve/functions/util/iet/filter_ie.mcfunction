# Description: Selected the IE that was triggered.

# Executed by all IEs within range of the player when the interaction occurred



# -- Flag for whether the executing IE was the one triggered -- #
scoreboard players set bTriggeredIe iet 0

# -- The 'on' operator will only succeed if the IE has data about the interaction, and is therefore the triggered IE -- #
execute if score clickType iet matches 0 on attacker store result score bTriggeredIe iet if entity @s[tag=iet_player]
execute if score clickType iet matches 1 on target store result score bTriggeredIe iet if entity @s[tag=iet_player]

# -- Clear the interaction data from the IE -- #
execute if score bTriggeredIe iet matches 1 if score clickType iet matches 0 run data remove entity @s attack
execute if score bTriggeredIe iet matches 1 if score clickType iet matches 1 run data remove entity @s interaction

# -- Mark the IE as the triggered one for future processes -- #
execute if score bTriggeredIe iet matches 1 run tag @s add iet_ie