# function vas:message/tell {path:"/control/start"}

execute if score #sys vas.process matches 1 run return run tellraw @s {translate: info.vas.start.fail.been}
execute unless entity @s[team=runner] run return run tellraw @s {translate: info.vas.start.fail}

title @a title {translate: "title.vas.start"}

scoreboard players set #sys vas.process 1