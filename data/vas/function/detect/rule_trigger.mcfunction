
# rule
execute if score @s vas.rule.runnerDiedToBe matches 0..2 run \
    scoreboard players operation runnerDiedToBe vas.rule = @s vas.rule.runnerDiedToBe
execute if score @s vas.rule.runnerDiedToBe matches 0..2 run \
    function vas:rule/change
scoreboard players set @s vas.rule.runnerDiedToBe -1
scoreboard players enable @s vas.rule.runnerDiedToBe

execute if score @s vas.rule.runnerIsGlow matches 0..1 run \
    scoreboard players operation runnerIsGlow vas.rule = @s vas.rule.runnerIsGlow
execute if score @s vas.rule.runnerIsGlow matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.runnerIsGlow -1
scoreboard players enable @s vas.rule.runnerIsGlow

execute if score @s vas.rule.compass.update matches 0..1 run \
    scoreboard players operation compass.update vas.rule = @s vas.rule.compass.update
execute if score @s vas.rule.compass.update matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.compass.update -1
scoreboard players enable @s vas.rule.compass.update

execute if score @s vas.rule.compass.dimension matches 0..1 run \
    scoreboard players operation compass.dimension vas.rule = @s vas.rule.compass.dimension
execute if score @s vas.rule.compass.dimension matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.compass.dimension -1
scoreboard players enable @s vas.rule.compass.dimension

execute if score @s vas.rule.compass.distance matches 0..1 run \
    scoreboard players operation compass.distance vas.rule = @s vas.rule.compass.distance
execute if score @s vas.rule.compass.distance matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.compass.distance -1
scoreboard players enable @s vas.rule.compass.distance

execute if score @s vas.rule.compass.xz matches 0..1 run \
    scoreboard players operation compass.xz vas.rule = @s vas.rule.compass.xz
execute if score @s vas.rule.compass.xz matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.compass.xz -1
scoreboard players enable @s vas.rule.compass.xz

execute if score @s vas.rule.compass.y matches 0..1 run \
    scoreboard players operation compass.y vas.rule = @s vas.rule.compass.y
execute if score @s vas.rule.compass.y matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.compass.y -1
scoreboard players enable @s vas.rule.compass.y

execute if score @s vas.rule.hunter.canTrack.hunter matches 0..1 run \
    scoreboard players operation hunter.canTrack.hunter vas.rule = @s vas.rule.hunter.canTrack.hunter
execute if score @s vas.rule.hunter.canTrack.hunter matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.hunter.canTrack.hunter -1
scoreboard players enable @s vas.rule.hunter.canTrack.hunter

execute if score @s vas.rule.hunter.canTrack.runner matches 0..1 run \
    scoreboard players operation hunter.canTrack.runner vas.rule = @s vas.rule.hunter.canTrack.runner
execute if score @s vas.rule.hunter.canTrack.runner matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.hunter.canTrack.runner -1
scoreboard players enable @s vas.rule.hunter.canTrack.runner

execute if score @s vas.rule.runner.canTrack.hunter matches 0..1 run \
    scoreboard players operation runner.canTrack.hunter vas.rule = @s vas.rule.runner.canTrack.hunter
execute if score @s vas.rule.runner.canTrack.hunter matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.runner.canTrack.hunter -1
scoreboard players enable @s vas.rule.runner.canTrack.hunter

execute if score @s vas.rule.runner.canTrack.runner matches 0..1 run \
    scoreboard players operation runner.canTrack.runner vas.rule = @s vas.rule.runner.canTrack.runner
execute if score @s vas.rule.runner.canTrack.runner matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.runner.canTrack.runner -1
scoreboard players enable @s vas.rule.runner.canTrack.runner

execute if score @s vas.rule.compass.detector matches 0..1 run \
    scoreboard players operation compass.detector vas.rule = @s vas.rule.compass.detector
execute if score @s vas.rule.compass.detector matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.compass.detector -1
scoreboard players enable @s vas.rule.compass.detector

