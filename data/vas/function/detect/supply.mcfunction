give @s golden_apple
# tag @s remove can_have_supply
scoreboard players remove @s vas.supply 1
execute unless score @s vas.supply matches 0 run function vas:detect/supply