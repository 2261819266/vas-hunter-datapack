# function vas:message/tell {path:"/detect/pt20"}

execute if score @s vas.join.hunter matches 1 store result score #pt20 vas.temp run function vas:check/can_join_hunter
scoreboard players enable @s vas.join.hunter
execute if score @s vas.join.hunter matches 1 if score #pt20 vas.temp matches 1 run function vas:control/join_hunter
execute if score @s vas.join.hunter matches 1 if score #pt20 vas.temp matches 0 run tellraw @s {translate:"info.vas.join.fail"}
execute if score @s vas.join.hunter matches 1 if score #pt20 vas.temp matches -1 run tellraw @s {translate:"info.vas.join.in"}
scoreboard players set @s vas.join.hunter 0

execute if score @s vas.join.runner matches 1 store result score #pt20 vas.temp run function vas:check/can_join_runner
scoreboard players enable @s vas.join.runner
execute if score @s vas.join.runner matches 1 if score #pt20 vas.temp matches 1 run function vas:control/join_runner
execute if score @s vas.join.runner matches 1 if score #pt20 vas.temp matches 0 run tellraw @s {translate:"info.vas.join.fail"}
execute if score @s vas.join.runner matches 1 if score #pt20 vas.temp matches -1 run tellraw @s {translate:"info.vas.join.in"}
scoreboard players set @s vas.join.runner 0

execute if score @s vas.join.leave matches 1 run function vas:control/leave
scoreboard players enable @s vas.join.leave
scoreboard players set @s vas.join.leave 0

advancement revoke @s only vas:detect/pt20
