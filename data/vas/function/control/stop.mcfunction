# function vas:message/tell {path:"/control/stop"}

execute if score #sys vas.process matches 0 run return run tellraw @s {translate: info.vas.stop.fail.been}
execute unless entity @s[team=runner] run return run tellraw @s {translate: info.vas.stop.fail}

# title @a title {translate: "title.vas.stop"}
function vas:control/fail
