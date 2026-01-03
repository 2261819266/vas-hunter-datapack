function vas:message/tell {path:"/control/leave"}

execute if score #sys vas.process matches 1 run return run tellraw @s {translate: "info.vas.join.fail"}

team leave @s

function vas:detect/change_inventory

tellraw @s {translate: "info.vas.leave"}

function vas:control/show