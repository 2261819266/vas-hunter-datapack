tellraw @a "\u00a7aThe vas-hunter-datapack has been loaded!"

scoreboard objectives add showCommand dummy
execute unless score #vas showCommand matches 0..1 run \
    scoreboard players set #vas showCommand 0

gamerule locator_bar false

scoreboard objectives add vas.temp dummy
scoreboard objectives add vas.join.hunter trigger {translate: "team.vas.hunter", color: red}
scoreboard objectives add vas.join.runner trigger {translate: "team.vas.runner", color: green}
# 追杀是否进行 #sys
scoreboard objectives add vas.process dummy
execute unless score #sys vas.process matches 0..1 run scoreboard players set #sys vas.process 0 

team add hunter {translate:"team.vas.hunter", color: red}
team modify hunter color red
team add runner {translate:"team.vas.runner", color: green}
team modify runner color green
