# Description: Runs in response to an triggered IE component of a gold_pile_large treasure interactable

# Executed by the triggered gold_pile_large IE


particle minecraft:block minecraft:raw_gold_block ~ ~.25 ~ .2 .15 .2 0 35 force
playsound delve:treasure.coins.small.pickup block @a[distance=..32] ~ ~ ~ 1 1 0
kill @e[distance=..0.1,tag=golden_goblet,tag=Delve]
