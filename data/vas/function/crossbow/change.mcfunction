execute as @e[distance=0..20, type=arrow, predicate=vas:projectile/ender_pearl] run function vas:crossbow/ender_pearl
execute if items entity @s weapon.mainhand crossbow[item_model="vas:crossbow"] run \
  item modify entity @s weapon.mainhand vas:crossbow_model_minecraft
execute if items entity @s weapon.offhand crossbow[item_model="vas:crossbow"] run \
  item modify entity @s weapon.offhand vas:crossbow_model_minecraft