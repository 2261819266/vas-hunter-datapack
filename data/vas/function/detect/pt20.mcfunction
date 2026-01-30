# function vas:message/tell {path:"/detect/pt20"}

function vas:detect/trigger

advancement revoke @s only vas:detect/pt20

function vas:player/store_pos

execute if dimension the_end unless entity @e[type=ender_dragon] \
    if loaded 0 0 0 if score #sys vas.process matches 1 run \
    function vas:control/win