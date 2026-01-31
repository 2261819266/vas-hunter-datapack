function vas:message/tell {path:"/detect/die/"}

scoreboard players set @s vas.die 0

execute if score #sys vas.process matches 0 run return 0

execute if entity @s[team=runner] run gamemode spectator

execute unless entity @a[team=runner, gamemode=!spectator] run function vas:control/fail