tellraw @a "\u00a7aThe vas-hunter-datapack has been loaded!"

# add scoreboard
scoreboard objectives add vas.temp dummy
scoreboard objectives add vas.cycle dummy
scoreboard objectives add vas.cycle_end dummy
    # system
        #sys
scoreboard objectives add vas.show.command dummy
scoreboard objectives add vas.process dummy
scoreboard objectives add vas.count.uid dummy
scoreboard objectives add vas.count.dimension dummy
        #player
            # 0 to maxuid - 1
scoreboard objectives add vas.uid dummy
scoreboard objectives add vas.dimension_id dummy
    # trigger
scoreboard objectives add vas.join.hunter trigger {translate: team.vas.hunter}
scoreboard objectives add vas.join.runner trigger {translate: team.vas.runner}
scoreboard objectives add vas.join.leave trigger {translate: team.vas.leave}
scoreboard objectives add vas.control.reshow trigger {translate: control.vas.reshow}
scoreboard objectives add vas.control.showCommand trigger {translate: control.vas.showCommand}
scoreboard objectives add vas.control.changeSettings trigger {translate: control.vas.changeSettings}
    # use item
scoreboard objectives add vas.cs_use used:carrot_on_a_stick cs_use

# init
    # score
        # #sys: system variable
execute unless score #sys vas.show.command matches 0..1 run scoreboard players set #sys vas.show.command 0
execute unless score #sys vas.process matches 0..1 run scoreboard players set #sys vas.process 0 
    # gamerule
gamerule locator_bar false
    # team
team add hunter {translate: team.vas.hunter}
team modify hunter color red
team add runner {translate: team.vas.runner}
team modify runner color green

function vas:dimension/default_dimension_register