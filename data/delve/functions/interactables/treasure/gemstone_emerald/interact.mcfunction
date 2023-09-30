# Description: Runs in response to an triggered IE component of a gold_pile_large treasure interactable

# Executed by the triggered gold_pile_large IE


playsound delve:treasure.gemstone.pickup block @a[distance=..32] ~ ~ ~ 1 1 0
kill @e[distance=..0.1,tag=emerald,tag=gemstone,tag=Delve]
