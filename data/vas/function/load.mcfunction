tellraw @a "\u00a7aThe vas-hunter-datapack has been loaded!"

# add scoreboard #*
scoreboard objectives add vas.temp dummy
scoreboard objectives add vas.cycle dummy
scoreboard objectives add vas.cycle_end dummy
    # system
        # sys #sys
scoreboard objectives add vas.show.command dummy
scoreboard objectives add vas.process dummy
scoreboard objectives add vas.count.uid dummy
scoreboard objectives add vas.count.dimension dummy
scoreboard objectives add vas.gametime dummy { translate: score.vas.gametime }
        # player @a
            # 0 to maxuid - 1
scoreboard objectives add vas.uid dummy
scoreboard objectives add vas.die deathCount
        # rule #h_h_rule #h_r_rule #r_h_rule #r_r_rule
        # e.g. #h_r_rule is for Hunter can or can't track Runner 
scoreboard objectives add vas.rule.canTrack dummy
scoreboard objectives add vas.rule.compass.xz dummy
scoreboard objectives add vas.rule.compass.y dummy
scoreboard objectives add vas.rule.compass.dimension dummy
scoreboard objectives add vas.rule.compass.distance dummy
        # rule #rule
scoreboard objectives add vas.rule.compass.update dummy
scoreboard objectives add vas.rule.runnerDiedToBe dummy
scoreboard objectives add vas.rule.runnerIsGlow dummy
scoreboard objectives add vas.rule.defaultHasApply dummy
    # trigger @a
scoreboard objectives add vas.join.hunter trigger {translate: score.vas.join.hunter}
scoreboard objectives add vas.join.runner trigger {translate: score.vas.join.runner}
scoreboard objectives add vas.join.leave trigger {translate: score.vas.join.leave}
scoreboard objectives add vas.control.showCommand trigger {translate: score.vas.showCommand}
scoreboard objectives add vas.control.changeSettings trigger {translate: score.vas.changeSettings}
scoreboard objectives add vas.control.start trigger {translate: score.vas.start}
scoreboard objectives add vas.control.stop trigger {translate: score.vas.stop}
scoreboard objectives add vas.tracking trigger {translate: score.vas.tracking}
scoreboard objectives add vas.focus trigger {translate: score.vas.tracking}
scoreboard objectives add vas.change.nearest trigger {translate: score.vas.change.nearest}
scoreboard objectives add vas.gamemode trigger {translate: score.vas.gamemode}
    # use item @a
scoreboard objectives add vas.use.compass used:compass
# scoreboard objectives add vas.cs_use used:carrot_on_a_stick cs_use

# init
    # rule
execute unless score #rule vas.rule.defaultHasApply matches 1 run function vas:control/apply_default_rule
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