# Description: Runs in response to an triggered IE component of a gold_pile_small treasure interactable

# Executed by the triggered gold_pile_small IE


playsound minecraft:ui.toast.challenge_complete block @a[distance=..32] ~ ~ ~ 1 0 0
kill @e[distance=..0.1,tag=gold_pile_small,tag=Delve]
