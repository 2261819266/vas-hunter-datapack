execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.changeRule.fail}

execute store result storage vas:sys rule.glow_time int 1 run \
    scoreboard players operation glow_time vas.rule = @s vas.rule.glow_time