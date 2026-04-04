execute if score @s vas.used.crossbow matches 1.. \
  as @e[distance=0..20, type=arrow, predicate=vas:projectile/ender_pearl] run function vas:crossbow/ender_pearl
execute if score @s vas.used.bow matches 1.. \
  as @e[distance=0..20, type=arrow, predicate=vas:projectile/ender_pearl] run function vas:crossbow/ender_pearl

scoreboard players set @s vas.used.crossbow 0
scoreboard players set @s vas.used.bow 0