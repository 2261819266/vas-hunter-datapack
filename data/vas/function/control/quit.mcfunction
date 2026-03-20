execute if score process vas.sys matches 0 run return run tellraw @s {translate: info.vas.stop.fail.been}
gamemode spectator

execute unless entity @a[team=runner, gamemode=!spectator] run function vas:control/fail

team leave @s