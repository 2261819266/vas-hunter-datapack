function vas:message/tell {path:"/control/join_runner"}

execute if score #sys vas.process matches 1 run return run tellraw @s {translate: "info.vas.join.fail"}

execute if entity @s[predicate=!vas:player/can_join_runner] run return run tellraw @s {translate:"info.vas.join.in"}

team join runner
function vas:control/clear
tellraw @s {translate: "info.vas.join.succeed"}