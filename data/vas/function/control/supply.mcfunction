# give @s golden_apple 1
loot give @s loot vas:death_supply
# tag @s remove can_have_supply
scoreboard players remove @s vas.supply 1
execute unless score @s vas.supply matches 0 run function vas:control/supply