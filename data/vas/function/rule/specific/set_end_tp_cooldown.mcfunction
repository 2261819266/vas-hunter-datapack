execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.changeRule.fail}

scoreboard players operation end_tp_cooldown vas.rule = @s vas.rule.end_tp_cooldown
scoreboard players operation end_tp_cooldown vas.rule *= 60 vas.constant
