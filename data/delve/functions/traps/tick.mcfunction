# Description: The main function for all trap entities- handles all standard runtime logic

# Executed by all entities within 32 blocks of a player tagged with "trap"


execute as @s[tag=pendulum] at @s run function delve:traps/pendulum/tick
