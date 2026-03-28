# function vas:message/tell {path:"/control/start"}

execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.start.fail.been}
execute unless entity @s[team=runner] run return run tellraw @s {translate: info.vas.start.fail}

title @a title {translate: "title.vas.start"}

time set day
weather clear
difficulty normal

gamemode survival @a[team=runner]
gamemode survival @a[team=hunter]
gamemode spectator @a[team=!runner, team=!hunter]

gamerule locator_bar false
gamerule send_command_feedback false

scoreboard players set process vas.sys 1

scoreboard objectives remove vas.gameTime
scoreboard objectives add vas.gameTime dummy { translate: score.vas.gameTime }

scoreboard players set @a[gamemode=!spectator, team=runner] vas.gameTime 0
scoreboard objectives setdisplay sidebar vas.gameTime

scoreboard players reset * vas.die
scoreboard players reset * vas.kill 