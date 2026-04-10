tellraw @a { translate: info.vas.load, with: [{ keybind: "key.quickActions", color: "green" }] }

# execute if score scoreboard_init vas.sys matches 1 run return 0

# add scoreboard #*
scoreboard objectives add vas.temp dummy
scoreboard objectives add vas.cycle dummy
scoreboard objectives add vas.cycle_end dummy
    # system
        # sys #sys
scoreboard objectives add vas.sys dummy
scoreboard objectives add vas.constant dummy
        # player @a
scoreboard objectives add vas.uid dummy
scoreboard objectives add vas.dieDetect deathCount
scoreboard objectives add vas.die deathCount { translate: score.vas.die }
scoreboard objectives add vas.kill playerKillCount { translate: score.vas.kill }
scoreboard objectives add vas.gameTime dummy { translate: score.vas.gameTime }
scoreboard objectives add vas.musicTime dummy
scoreboard objectives add vas.have_structure dummy
scoreboard objectives add vas.distance_set dummy
scoreboard objectives add vas.success dummy
scoreboard objectives add vas.hasItem dummy
scoreboard objectives add vas.health health
scoreboard objectives add vas.supply dummy
        # used
scoreboard objectives add vas.used.crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add vas.used.bow minecraft.used:minecraft.bow
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
scoreboard objectives add vas.control.glow trigger {translate: score.vas.glow}
scoreboard objectives add vas.control.end_tp trigger {translate: dialog.vas.end_tp.title}
scoreboard objectives add vas.share trigger {translate: score.vas.share}
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
scoreboard objectives add vas.rule.runnerDiedToBe trigger
scoreboard objectives add vas.rule.runnerIsGlow trigger
scoreboard objectives add vas.rule.compass.update trigger
scoreboard objectives add vas.rule.compass.dimension trigger
scoreboard objectives add vas.rule.compass.distance trigger
scoreboard objectives add vas.rule.compass.xz trigger
scoreboard objectives add vas.rule.compass.y trigger
scoreboard objectives add vas.rule.hunter.canTrack.hunter trigger
scoreboard objectives add vas.rule.hunter.canTrack.runner trigger
scoreboard objectives add vas.rule.runner.canTrack.hunter trigger
scoreboard objectives add vas.rule.runner.canTrack.runner trigger
scoreboard objectives add vas.rule.supply.count trigger
scoreboard objectives add vas.rule.glow_time trigger
scoreboard objectives add vas.rule.glow_cooldown trigger
scoreboard objectives add vas.rule.freeze trigger
scoreboard objectives add vas.rule.supply_time trigger
scoreboard objectives add vas.control.rule trigger
scoreboard objectives add vas.compass.choose trigger

## init
    # rule
execute unless score defaultHasApply vas.rule matches 1 run function vas:rule/apply_default_rule
    # score
        # #sys: system variable
execute unless score process vas.sys matches 0..1 run scoreboard players set process vas.sys 0 
    # gamerule
gamerule locator_bar false
    # team
team add hunter {translate: team.vas.hunter}
team modify hunter color red
team add runner {translate: team.vas.runner}
team modify runner color green
    # dimension
function vas:dimension/default_dimension_register
    #setdisplay
scoreboard objectives setdisplay below_name vas.kill
scoreboard objectives setdisplay list vas.die
    # schedule
function vas:detect/schedule/change_inventory
function vas:detect/schedule/pt5
function vas:detect/schedule/pt20
    # bossbar
bossbar add vas:freeze { translate: "bossbar.vas.freeze.title", color: "red" }

scoreboard players set scoreboard_init vas.sys 1
