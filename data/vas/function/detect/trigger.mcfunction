# function vas:message/tell {path:"/detect/trigger/"}


execute if score @s vas.join.hunter matches 1 run function vas:control/join_hunter
scoreboard players set @s vas.join.hunter 0
scoreboard players enable @s vas.join.hunter

execute if score @s vas.join.runner matches 1 run function vas:control/join_runner
scoreboard players set @s vas.join.runner 0
scoreboard players enable @s vas.join.runner

execute if score @s vas.join.leave matches 1 run function vas:control/leave
scoreboard players set @s vas.join.leave 0
scoreboard players enable @s vas.join.leave

# execute if score @s vas.control.reshow matches 1 run function vas:control/show
# scoreboard players set @s vas.control.reshow 0
# scoreboard players enable @s vas.control.reshow

execute if score @s vas.control.showCommand matches 1 run function vas:message/show_command
execute if score @s vas.control.showCommand matches 0 run function vas:message/hide_command
scoreboard players enable @s vas.control.showCommand

execute if score @s vas.control.changeSettings matches 1 run function vas:control/change_settings
scoreboard players set @s vas.control.changeSettings 0
scoreboard players enable @s vas.control.changeSettings

execute if score @s vas.control.start matches 1 run function vas:control/start
scoreboard players set @s vas.control.start 0
scoreboard players enable @s vas.control.start

execute if score @s vas.control.stop matches 1 run function vas:control/stop
scoreboard players set @s vas.control.stop 0
scoreboard players enable @s vas.control.stop

# execute unless score @s vas.tracking matches -1 run function vas:
# scoreboard players set @s vas.tracking -1
scoreboard players enable @s vas.tracking
scoreboard players enable @s vas.focus

execute if score @s vas.compass.change.nearest matches 1 run function vas:compass/change/nearest
scoreboard players set @s vas.compass.change.nearest 0
scoreboard players enable @s vas.compass.change.nearest

execute if score @s vas.compass.change.random matches 1 run function vas:compass/change/random
scoreboard players set @s vas.compass.change.random 0
scoreboard players enable @s vas.compass.change.random

execute if score @s vas.compass.get matches 1 run function vas:compass/give
scoreboard players set @s vas.compass.get 0
scoreboard players enable @s vas.compass.get

execute if score @s vas.gamemode matches 1.. run function vas:player/change_gamemode
scoreboard players set @s vas.gamemode 0
scoreboard players enable @s vas.gamemode

execute if score @s vas.music.random matches 1 run function vas:music/random
scoreboard players enable @s vas.music.random

execute if score @s vas.music.stop matches 1 run function vas:music/stop
scoreboard players set @s vas.music.stop 0
scoreboard players enable @s vas.music.stop

execute if score @s vas.music.select matches 1.. run \
    scoreboard players operation @s vas.music.select_again = @s vas.music.select
execute if score @s vas.music.select matches 1.. run function vas:music/select_music
scoreboard players set @s vas.music.select 0
scoreboard players enable @s vas.music.select

