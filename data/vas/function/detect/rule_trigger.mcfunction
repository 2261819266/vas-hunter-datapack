
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

execute if score @s vas.rule.hunter.cantrack.hunter matches 0..1 run \
    scoreboard players operation hunter.cantrack.hunter vas.rule = @s vas.rule.hunter.cantrack.hunter
execute if score @s vas.rule.hunter.cantrack.hunter matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.hunter.cantrack.hunter -1
scoreboard players enable @s vas.rule.hunter.cantrack.hunter

execute if score @s vas.rule.hunter.cantrack.runner matches 0..1 run \
    scoreboard players operation hunter.cantrack.runner vas.rule = @s vas.rule.hunter.cantrack.runner
execute if score @s vas.rule.hunter.cantrack.runner matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.hunter.cantrack.runner -1
scoreboard players enable @s vas.rule.hunter.cantrack.runner

execute if score @s vas.rule.runner.cantrack.hunter matches 0..1 run \
    scoreboard players operation runner.cantrack.hunter vas.rule = @s vas.rule.runner.cantrack.hunter
execute if score @s vas.rule.runner.cantrack.hunter matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.runner.cantrack.hunter -1
scoreboard players enable @s vas.rule.runner.cantrack.hunter

execute if score @s vas.rule.runner.cantrack.runner matches 0..1 run \
    scoreboard players operation runner.cantrack.runner vas.rule = @s vas.rule.runner.cantrack.runner
execute if score @s vas.rule.runner.cantrack.runner matches 0..1 run \
    function vas:rule/change
scoreboard players set @s vas.rule.runner.cantrack.runner -1
scoreboard players enable @s vas.rule.runner.cantrack.runner

