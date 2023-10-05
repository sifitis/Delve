# Description: The main function for a pendulum entity- handles all standard runtime logic

# Executed by the pendulum display_item entity


execute as @s[tag=ACTIVE] at @s run function delve:traps/pendulum/tick/active

execute as @s[tag=INACTIVE] at @s run function delve:traps/pendulum/tick/inactive