# Description: Runs in response to an triggered IE component of a gold_pile_small treasure interactable

# Executed by the triggered gold_pile_small IE


particle minecraft:block minecraft:raw_gold_block ~ ~ ~ .1 .1 .1 0 15 force
playsound delve:treasure.coins.small.pickup block @a[distance=..32] ~ ~ ~ 1 1 0
kill @e[distance=..0.1,tag=gold_pile_small,tag=Delve]
