setblock ~ ~ ~ end_portal
clear @s
item replace entity @s container.0 with diamond_axe
give @s diamond_pickaxe
give @s water_bucket
give @s crossbow
give @s bow
give @s ender_pearl 32
give @s end_stone_bricks 64
give @s golden_carrot 64
give @s end_stone_bricks 640
give @s ender_pearl 64
give @s arrow 256
item replace entity @s armor.chest with diamond_chestplate
item replace entity @s armor.legs with diamond_leggings
item replace entity @s armor.head with diamond_helmet
item replace entity @s armor.feet with diamond_boots
function vas:control/join_runner
function vas:control/start
# execute in the_end run forceload add -64 -64 64 64
# execute in the_end run kill @e[type=item]
gamerule keep_inventory true
