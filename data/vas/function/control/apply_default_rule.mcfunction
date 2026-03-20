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
scoreboard players set hunter.cantrack.hunter vas.rule 0
scoreboard players set hunter.cantrack.runner vas.rule 1
scoreboard players set runner.cantrack.hunter vas.rule 1
scoreboard players set runner.cantrack.runner vas.rule 0


scoreboard players set defaultHasApply vas.rule 1
