execute unless score process vas.sys matches 1 run return run tellraw @s { translate: info.vas.end_tp.fail.team }
execute if entity @s[team=!hunter] run return run tellraw @s { translate: info.vas.end_tp.fail.team }
execute unless entity @a[team=runner, advancements={minecraft:story/enter_the_end=true}] run return run tellraw @s { translate: info.vas.end_tp.fail.none }

execute in the_end run spreadplayers 0 0 0 100 false @s

# TODD: cooldown