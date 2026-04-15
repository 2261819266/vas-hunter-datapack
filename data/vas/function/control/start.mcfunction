# function vas:message/tell {path:"/control/start"}

execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.start.fail.been}
execute unless entity @s[team=runner] run return run tellraw @s {translate: info.vas.start.fail}

title @a title {translate: "title.vas.start"}

time set day
weather clear
difficulty easy

gamemode survival @a[team=runner]
gamemode survival @a[team=hunter]
gamemode spectator @a[team=!runner, team=!hunter]

gamerule locator_bar false
gamerule send_command_feedback false

scoreboard players set process vas.sys 1

scoreboard objectives remove vas.gameTime
scoreboard objectives add vas.gameTime dummy { translate: score.vas.gameTime }

scoreboard players set @a[gamemode=!spectator, team=runner] vas.gameTime 0
scoreboard players set time vas.sys 0
scoreboard objectives setdisplay sidebar vas.gameTime

scoreboard players reset * vas.die
scoreboard players reset * vas.kill 

scoreboard players operation glow_cooldown vas.sys = glow_cooldown vas.rule
function vas:detect/schedule/pm_for_glow

# bossbar
execute if score freeze vas.rule matches ..0 run return 0
bossbar set vas:freeze visible true
bossbar set vas:freeze players @a
scoreboard players operation freezing_time vas.sys = freeze vas.rule
execute as @a[team=hunter] run function vas:player/freeze
schedule function vas:detect/schedule/freeze 1s replace
execute as @a[team=hunter] at @s run playsound block.stone.place record @s ~ ~ ~ 0.9 0.8 0.9

execute in minecraft:the_end run forceload add -256 -256 256 256

effect give @a saturation 1 255
effect give @a instant_health 1 255

scoreboard players operation @a vas.end_tp_cooldown_time = end_tp_cooldown vas.rule

execute if score compass.detector vas.rule matches 1 \
  as @a[team=runner] run loot give @s loot vas:detector