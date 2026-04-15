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
scoreboard players enable @s vas.control.showCommand

execute if score @s vas.control.start matches 1 run function vas:control/start
scoreboard players set @s vas.control.start 0
scoreboard players enable @s vas.control.start

execute if score @s vas.control.stop matches 1 run function vas:control/stop
scoreboard players set @s vas.control.stop 0
scoreboard players enable @s vas.control.stop

# execute unless score @s vas.tracking matches -1 run function vas:
# scoreboard players set @s vas.tracking -1
# execute store success score #choose vas.temp run function vas:compass/refresh
scoreboard players reset choose vas.temp
execute store success score choose vas.temp run scoreboard players enable @s vas.tracking
execute if score choose vas.temp matches 1 run function vas:compass/refresh

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

execute if score @s vas.control.reset matches 1 run function vas:control/reset
scoreboard players set @s vas.control.reset 0
scoreboard players enable @s vas.control.reset

execute if score @s vas.control.quit matches 1 run function vas:control/quit
scoreboard players set @s vas.control.quit 0
scoreboard players enable @s vas.control.quit

execute if score @s vas.share matches 1 run function vas:share/share
scoreboard players set @s vas.share 0
scoreboard players enable @s vas.share

execute if score @s vas.control.rule matches 1 run function vas:rule/change
scoreboard players set @s vas.control.rule 0
scoreboard players enable @s vas.control.rule

execute if score @s vas.compass.choose matches 1 run function vas:compass/choose/main
scoreboard players set @s vas.compass.choose 0
scoreboard players enable @s vas.compass.choose

execute if score @s vas.rule.supply.count matches 0.. run function vas:rule/specific/set_supply
scoreboard players set @s vas.rule.supply.count -1
scoreboard players enable @s vas.rule.supply.count

execute if score @s vas.rule.glow_time matches 0.. run \
    function vas:rule/specific/set_glow_time
scoreboard players set @s vas.rule.glow_time -1
scoreboard players enable @s vas.rule.glow_time

execute if score @s vas.rule.glow_cooldown matches 0.. run \
    function vas:rule/specific/set_glow_cooldown
scoreboard players set @s vas.rule.glow_cooldown -1
scoreboard players enable @s vas.rule.glow_cooldown

execute if score @s vas.control.glow matches 1 run function vas:control/glow with storage vas:sys rule
scoreboard players set @s vas.control.glow 0
scoreboard players enable @s vas.control.glow

execute if score @s vas.rule.freeze matches 0.. run \
    function vas:rule/specific/set_freeze
scoreboard players set @s vas.rule.freeze -1
scoreboard players enable @s vas.rule.freeze

execute if score @s vas.rule.supply_time matches 0.. run \
    function vas:rule/specific/set_supply_time
scoreboard players set @s vas.rule.supply_time -1
scoreboard players enable @s vas.rule.supply_time

execute if score @s vas.control.end_tp matches 1 run \
    function vas:control/end_tp
scoreboard players set @s vas.control.end_tp 0
scoreboard players enable @s vas.control.end_tp

execute if score @s vas.rule.end_tp_cooldown matches 0.. run \
    function vas:rule/specific/set_end_tp_cooldown
scoreboard players set @s vas.rule.end_tp_cooldown -1
scoreboard players enable @s vas.rule.end_tp_cooldown