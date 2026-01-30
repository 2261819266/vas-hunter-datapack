# function vas:message/tell {path:"/control/apply_default_rule"}

scoreboard players set #rule vas.rule.defaultHasApply 1

# 0 : right click, 1 : auto
scoreboard players set #rule vas.rule.compass.update 0
# 0 : to be spectator, 1 : to be Hunter, 2 : to revive
scoreboard players set #rule vas.rule.runnerDiedToBe 0
scoreboard players set #rule vas.rule.runnerIsGlow 0


scoreboard players set #h_h_rule vas.rule.canTrack 0
scoreboard players set #h_h_rule vas.rule.compass.dimension 0
scoreboard players set #h_h_rule vas.rule.compass.distance 0
scoreboard players set #h_h_rule vas.rule.compass.xz 0
scoreboard players set #h_h_rule vas.rule.compass.y 0

scoreboard players set #h_r_rule vas.rule.canTrack 1
scoreboard players set #h_r_rule vas.rule.compass.dimension 0
scoreboard players set #h_r_rule vas.rule.compass.distance 0
scoreboard players set #h_r_rule vas.rule.compass.xz 0
scoreboard players set #h_r_rule vas.rule.compass.y 0

scoreboard players set #r_h_rule vas.rule.canTrack 1
scoreboard players set #r_h_rule vas.rule.compass.dimension 0
scoreboard players set #r_h_rule vas.rule.compass.distance 0
scoreboard players set #r_h_rule vas.rule.compass.xz 0
scoreboard players set #r_h_rule vas.rule.compass.y 0

scoreboard players set #r_r_rule vas.rule.canTrack 0
scoreboard players set #r_r_rule vas.rule.compass.dimension 0
scoreboard players set #r_r_rule vas.rule.compass.distance 0
scoreboard players set #r_r_rule vas.rule.compass.xz 0
scoreboard players set #r_r_rule vas.rule.compass.y 0

