# function vas:message/tell {path:"/detect/die/"}

scoreboard players set @s vas.dieDetect 0

execute if score process vas.sys matches 0 run return 0

execute if entity @s[team=runner] run gamemode spectator

execute unless entity @a[team=runner, gamemode=!spectator] run function vas:control/fail