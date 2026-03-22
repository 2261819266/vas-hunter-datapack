# function vas:message/tell {path:"/detect/change_inventory"}

# execute if items entity @s player.cursor *[custom_data~{selector:1b}, item_name={translate:"item.vas.hunter"}] run function vas:control/join_hunter
# execute if items entity @s player.cursor *[custom_data~{selector:1b}, item_name={translate:"item.vas.runner"}] run function vas:control/join_runner

# execute if entity @s[predicate=vas:player/can_be_control_give] run function vas:control/give
# execute if entity @s[predicate=!vas:player/can_be_control_give] run function vas:control/clear

advancement revoke @s only vas:detect/change_inventory
# function vas:detect/pt5

# clear

execute store result score count.tracker vas.temp run clear @s compass[item_name=tracker] 0
execute if score count.tracker vas.temp matches 0 \
    if predicate vas:player/can_have_compass \
    run function vas:compass/give
execute if score count.tracker vas.temp matches 2.. run clear @s compass[item_name=tracker]
execute as @a at @s if score @s vas.use.compass matches 1.. run function vas:compass/refresh

kill @e[type=item, nbt={Item: {components: {"minecraft:item_name": "tracker", "minecraft:custom_data": {"tracking": true}}}}]
