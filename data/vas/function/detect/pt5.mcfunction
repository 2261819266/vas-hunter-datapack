# function vas:message/tell {path:"/detect/pt5"}

execute as @a at @s if predicate vas:hand/tracker_mainhand unless predicate vas:hand/tracking_mainhand run function vas:compass/refresh
execute as @a at @s if predicate vas:hand/tracker_offhand unless predicate vas:hand/tracking_offhand run function vas:compass/refresh
execute as @a at @s if score @s vas.use.compass matches 1.. run function vas:compass/refresh

advancement revoke @s only vas:detect/pt5

execute if score @s vas.dieDetect matches 1.. run function vas:detect/die

function vas:detect/rule_trigger