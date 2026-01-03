# function vas:message/tell {path:"/control/trigger"}

execute if score @s vas.join.hunter matches 1 run function vas:control/join_hunter
scoreboard players set @s vas.join.hunter 0
scoreboard players enable @s vas.join.hunter

execute if score @s vas.join.runner matches 1 run function vas:control/join_runner
scoreboard players set @s vas.join.runner 0
scoreboard players enable @s vas.join.runner

execute if score @s vas.join.leave matches 1 run function vas:control/leave
scoreboard players set @s vas.join.leave 0
scoreboard players enable @s vas.join.leave

execute if score @s vas.control.reshow matches 1 run function vas:control/show
scoreboard players set @s vas.control.reshow 0
scoreboard players enable @s vas.control.reshow

execute if score @s vas.control.showCommand matches 1 run function vas:message/show_command
scoreboard players set @s vas.control.showCommand 0
scoreboard players enable @s vas.control.showCommand

execute if score @s vas.control.changeSettings matches 1 run function vas:control/change_settings
scoreboard players set @s vas.control.changeSettings 0
scoreboard players enable @s vas.control.changeSettings

execute if score @s vas.control.hideCommand matches 1 run function vas:message/hide_command
scoreboard players set @s vas.control.hideCommand 0
scoreboard players enable @s vas.control.hideCommand

