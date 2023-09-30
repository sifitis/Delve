# Description: Runs in response to an triggered IE component of a gold_pile_medium treasure interactable

# Executed by the triggered gold_pile_medium IE


particle minecraft:block minecraft:raw_gold_block ~ ~.15 ~ .1 .1 .1 0 25 force
playsound delve:treasure.coins.medium.pickup block @a[distance=..32] ~ ~ ~ 1 1 0
kill @e[distance=..0.1,tag=gold_pile_medium,tag=Delve]
