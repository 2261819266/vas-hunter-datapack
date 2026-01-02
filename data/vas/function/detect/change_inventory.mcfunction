function vas:message/tell {path:"/detect/change_inventory"}

execute if items entity @s player.cursor *[custom_data~{selector:1b}, item_name={translate:"item.vas.hunter"}] run function vas:control/join_hunter
execute if items entity @s player.cursor *[custom_data~{selector:1b}, item_name={translate:"item.vas.runner"}] run function vas:control/join_runner

execute if entity @s[predicate=vas:player/can_be_control_give] run function vas:control/give
execute if entity @s[predicate=!vas:player/can_be_control_give] run function vas:control/clear

advancement revoke @s only vas:detect/change_inventory
