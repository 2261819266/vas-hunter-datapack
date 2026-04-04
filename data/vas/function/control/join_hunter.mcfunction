# function vas:message/tell {path:"/control/join_hunter"}

execute if score process vas.sys matches 1 run return run tellraw @s {translate: "info.vas.join.fail"}

execute if entity @s[predicate=!vas:player/can_join_hunter] run return run tellraw @s {translate:"info.vas.join.in"}

team join hunter
function vas:control/clear
tellraw @s {translate: "info.vas.join.succeed"}