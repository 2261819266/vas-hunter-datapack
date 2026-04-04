# function vas:message/tell {path:"/detect/die/"}

scoreboard players set @s vas.dieDetect 0

execute if score process vas.sys matches 0 run return 0

execute if entity @s[team=runner] if score runnerDiedToBe vas.rule matches 0 run gamemode spectator
execute if entity @s[team=runner] if score runnerDiedToBe vas.rule matches 1 run title @s title "\u00a7cYou are Hunter now!"
execute if entity @s[team=runner] if score runnerDiedToBe vas.rule matches 1 run team join hunter

execute unless entity @a[team=runner, gamemode=!spectator] run function vas:control/fail