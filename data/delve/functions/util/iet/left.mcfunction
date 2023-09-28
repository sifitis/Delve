# Description: This is the starter function for a left click on an Interaction Entity

# Executed as the player who triggered the Interaction Entity (IE)

advancement revoke @s only delve:iet/left
scoreboard objectives add iet dummy
scoreboard players set clickType iet 0

function delve:util/iet/tag_entities