execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.changeRule.fail}

execute store result storage vas:sys rule.supply_time int 60 run \
    scoreboard players get @s vas.rule.supply_time

execute store result score supply_time vas.rule run \
    data get storage vas:sys rule.supply_time