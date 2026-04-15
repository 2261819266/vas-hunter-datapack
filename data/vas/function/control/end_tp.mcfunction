execute unless score process vas.sys matches 1 run return run tellraw @s { translate: info.vas.end_tp.fail.process }
execute if entity @s[team=!hunter] run return run tellraw @s { translate: info.vas.end_tp.fail.team }
execute unless entity @a[team=runner, advancements={minecraft:story/enter_the_end=true}] run return run tellraw @s { translate: info.vas.end_tp.fail.none }
execute unless dimension overworld run return run tellraw @s { translate: "info.vas.end_tp.fail.dimension" }
execute if score @s vas.end_tp_cooldown_time matches 1.. run return run tellraw @s \
  { translate: "info.vas.end_tp.fail.time", with: [{score: { name: "@s", objective: "vas.end_tp_cooldown_time" }} ], color: red }

# execute in the_end run spreadplayers 0 0 0 100 false @s

forceload add 0 0
setblock 0 -63 0 end_portal
setblock 0 -64 0 end_portal
tp @s 0 -64 0

# TODD: cooldown

scoreboard players operation @s vas.end_tp_cooldown_time = end_tp_cooldown vas.rule