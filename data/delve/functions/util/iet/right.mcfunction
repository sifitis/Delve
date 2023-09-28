# Description: This is the starter function for a right click on an Interaction Entity

# Executed as the player who triggered the Interaction Entity (IE)

advancement revoke @s only delve:iet/right
scoreboard objectives add iet dummy
scoreboard players set clickType iet 1

function delve:util/iet/tag_entities