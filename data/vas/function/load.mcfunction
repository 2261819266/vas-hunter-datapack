tellraw @a "\u00a7aThe vas-hunter-datapack has been loaded!"

# add scoreboard #*
scoreboard objectives add vas.temp dummy
scoreboard objectives add vas.cycle dummy
scoreboard objectives add vas.cycle_end dummy
    # system
        # sys #sys
scoreboard objectives add vas.sys dummy
        # player @a
            # 0 to maxuid - 1
scoreboard objectives add vas.uid dummy
scoreboard objectives add vas.dieDetect deathCount
scoreboard objectives add vas.die deathCount { translate: score.vas.die }
scoreboard objectives add vas.kill playerKillCount { translate: score.vas.kill }
scoreboard objectives add vas.gametime dummy { translate: score.vas.gametime }
scoreboard objectives add vas.musictime dummy
scoreboard objectives add vas.have_structure dummy
scoreboard objectives add vas.distance_set dummy
scoreboard objectives add vas.success dummy
        # rule 
scoreboard objectives add vas.rule dummy
    # trigger @a
scoreboard objectives add vas.join.hunter trigger {translate: score.vas.join.hunter}
scoreboard objectives add vas.join.runner trigger {translate: score.vas.join.runner}
scoreboard objectives add vas.join.leave trigger {translate: score.vas.join.leave}
scoreboard objectives add vas.control.showCommand trigger {translate: score.vas.showCommand}
scoreboard objectives add vas.control.changeSettings trigger {translate: score.vas.changeSettings}
scoreboard objectives add vas.control.start trigger {translate: score.vas.start}
scoreboard objectives add vas.control.stop trigger {translate: score.vas.stop}
scoreboard objectives add vas.control.reset trigger {translate: score.vas.reset}
scoreboard objectives add vas.control.quit trigger {translate: score.vas.quit}
scoreboard objectives add vas.share trigger {translate: score.vas.quit}
scoreboard objectives add vas.tracking trigger {translate: score.vas.tracking}
scoreboard objectives add vas.focus trigger {translate: score.vas.tracking}
scoreboard objectives add vas.compass.change.nearest trigger {translate: score.vas.compass.change.nearest}
scoreboard objectives add vas.compass.change.random trigger {translate: score.vas.compass.change.random}
scoreboard objectives add vas.compass.get trigger {translate: score.vas.compass.get}
scoreboard objectives add vas.gamemode trigger {translate: score.vas.gamemode}
scoreboard objectives add vas.music.random trigger {translate: score.vas.music.random}
scoreboard objectives add vas.music.stop trigger {translate: score.vas.music.stop}
scoreboard objectives add vas.music.select trigger
scoreboard objectives add vas.music.select_again trigger
    # use item @a
scoreboard objectives add vas.use.compass used:compass
# scoreboard objectives add vas.cs_use used:carrot_on_a_stick cs_use

# init
    # rule
execute unless score defaultHasApply vas.rule matches 1 run function vas:control/apply_default_rule
    # score
        # #sys: system variable
execute unless score show.command vas.sys matches 0..1 run scoreboard players set show.command vas.sys 0
execute unless score process vas.sys matches 0..1 run scoreboard players set process vas.sys 0 
    # gamerule
gamerule locator_bar false
    # team
team add hunter {translate: team.vas.hunter}
team modify hunter color red
team add runner {translate: team.vas.runner}
team modify runner color green

function vas:dimension/default_dimension_register

scoreboard objectives setdisplay below_name vas.kill
scoreboard objectives setdisplay list vas.die