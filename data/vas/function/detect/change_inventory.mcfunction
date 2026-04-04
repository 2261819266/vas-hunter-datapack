# function vas:message/tell {path:"/detect/change_inventory"}

execute store result score count.tracker vas.temp run clear @s compass[item_name=tracker] 0
execute if score count.tracker vas.temp matches 0 \
    if predicate vas:player/can_have_compass \
    run function vas:compass/give
execute if score count.tracker vas.temp matches 2.. run clear @s compass[item_name=tracker]
# execute if score @s vas.use.compass matches 1.. run function vas:compass/refresh
execute if predicate vas:player/need_update_compass run function vas:compass/refresh

kill @e[type=item, predicate=vas:item/tracker]
