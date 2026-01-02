function vas:message/tell {path:"/control/join_runner"}

execute unless entity @s[predicate=vas:player/can_join_runner] run return run tellraw @s {translate:"info.vas.join.fail"}
execute if entity @s[predicate=vas:player/can_join_runner] run team join runner

function vas:control/clear

tellraw @s {translate: "info.vas.join.succeed"}