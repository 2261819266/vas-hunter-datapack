execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.changeRule.fail}

execute store result bossbar vas:freeze max run \
  scoreboard players operation freeze vas.rule = @s vas.rule.freeze