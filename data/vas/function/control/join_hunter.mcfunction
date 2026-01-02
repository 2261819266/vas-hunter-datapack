function vas:message/tell {path:"/control/join_hunter"}

execute unless entity @s[predicate=vas:player/can_join_hunter] run return run tellraw @s {translate:"info.vas.join.fail"}
execute if entity @s[predicate=vas:player/can_join_hunter] run team join hunter

function vas:control/clear

tellraw @s {translate: "info.vas.join.succeed"}