execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.changeRule.fail}

scoreboard players operation glow_cooldown vas.rule = @s vas.rule.glow_cooldown
