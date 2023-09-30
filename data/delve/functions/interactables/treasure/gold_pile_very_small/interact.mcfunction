# Description: Runs in response to an triggered IE component of a gold_pile_very_small treasure interactable

# Executed by the triggered gold_pile_small IE


particle minecraft:block minecraft:raw_gold_block ~ ~ ~ .2 .2 .2 0 10 force
execute unless entity @s[tag=echo] run playsound delve:treasure.coins.very_small.pickup block @a[distance=..32] ~ ~ ~ 1 1 0
execute if entity @s[tag=echo] run playsound delve:treasure.coins.very_small.pickup_echo block @a[distance=..32] ~ ~ ~ 1 1 0
kill @e[distance=..0.1,tag=gold_pile_very_small,tag=Delve]
