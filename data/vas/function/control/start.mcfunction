# function vas:message/tell {path:"/control/start"}


execute if score #sys vas.process matches 1 run return run tellraw @s {translate: info.vas.start.fail.been}
execute unless entity @s[team=runner] run return run tellraw @s {translate: info.vas.start.fail}

title @a title {translate: "title.vas.start"}
# function vas:control/recover_all

gamemode survival @a[team=runner]
gamemode survival @a[team=hunter]
gamemode spectator @a[team=!runner, team=!hunter]

scoreboard players set #sys vas.process 1

scoreboard objectives remove vas.gametime
scoreboard objectives add vas.gametime dummy { translate: score.vas.gametime }

scoreboard players set @a[gamemode=!spectator, team=runner] vas.gametime 0
scoreboard objectives setdisplay sidebar vas.gametime

function vas:compass/give