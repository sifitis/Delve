# Description: Runs in response to an triggered IE component of a gold_pile_very_large treasure interactable

# Executed by the triggered gold_pile_very_large IE


particle minecraft:block minecraft:raw_gold_block ~ ~.25 ~ .2 .15 .2 0 65 force
playsound delve:treasure.coins.very_large.pickup block @a[distance=..32] ~ ~ ~ 1 1 0
kill @e[distance=..0.1,tag=gold_pile_very_large,tag=Delve]
