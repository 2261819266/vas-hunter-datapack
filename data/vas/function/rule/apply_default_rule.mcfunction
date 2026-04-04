# function vas:message/tell {path:"/control/apply_default_rule"}


# # 0 : right click, 1 : auto
scoreboard players set compass.update vas.rule 0

# # 0 : to be spectator, 1 : to be Hunter, 2 : to revive
scoreboard players set runnerDiedToBe vas.rule 0

scoreboard players set runnerIsGlow vas.rule 0

scoreboard players set compass.dimension vas.rule 0
scoreboard players set compass.distance vas.rule 0
scoreboard players set compass.xz vas.rule 0
scoreboard players set compass.y vas.rule 0
scoreboard players set hunter.canTrack.hunter vas.rule 0
scoreboard players set hunter.canTrack.runner vas.rule 1
scoreboard players set runner.canTrack.hunter vas.rule 1
scoreboard players set runner.canTrack.runner vas.rule 0

scoreboard players set supply.count vas.rule 3
scoreboard players set glow_cooldown vas.rule 5
scoreboard players set glow_time vas.rule 15
scoreboard players set freeze vas.rule 0
scoreboard players set supply_time vas.rule 0
data modify storage vas:sys rule.glow_time set value 15


scoreboard players set defaultHasApply vas.rule 1
