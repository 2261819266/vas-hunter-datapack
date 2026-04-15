execute as @a at @s run function vas:detect/tick
# execute as @p run tellraw @s { entity: "@s", nbt: SelectedItem }

# execute if entity @n[type=ender_pearl, sort=furthest] run \
#   tellraw @a {entity: "@n[type=ender_pearl, sort=furthest]", nbt: "Pos"}
# tellraw @a {entity: "@n[type=ender_pearl]", nbt: "Motion"}