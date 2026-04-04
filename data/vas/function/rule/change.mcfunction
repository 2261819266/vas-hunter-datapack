# function vas:message/tell {path:"/rule/change/"} 

execute if score process vas.sys matches 1 run return run tellraw @s {translate: info.vas.changeRule.fail}

data modify storage vas:temp dialog set value { \
    "title": { \
        "translate": "dialog.vas.rule.title" \
    }, \
    "type": "multi_action", \
    "actions": [], \
    "columns": 1 \
}

function vas:rule/change_apply { rule: runnerDiedToBe }
function vas:rule/change_apply { rule: runnerIsGlow }
function vas:rule/change_apply { rule: compass.update }
function vas:rule/change_apply { rule: compass.dimension }
function vas:rule/change_apply { rule: compass.distance }
function vas:rule/change_apply { rule: compass.xz }
function vas:rule/change_apply { rule: compass.y }
function vas:rule/change_apply { rule: hunter.canTrack.hunter }
function vas:rule/change_apply { rule: hunter.canTrack.runner }
function vas:rule/change_apply { rule: runner.canTrack.hunter }
function vas:rule/change_apply { rule: runner.canTrack.runner }

execute if score runnerDiedToBe vas.rule matches 0 run \
    data modify storage vas:temp dialog.actions[0].label[1].translate set value dialog.vas.rule.spectator
execute if score runnerDiedToBe vas.rule matches 1 run \
    data modify storage vas:temp dialog.actions[0].label[1].translate set value dialog.vas.rule.hunter
execute if score runnerDiedToBe vas.rule matches 2 run \
    data modify storage vas:temp dialog.actions[0].label[1].translate set value dialog.vas.rule.revive
execute if score runnerDiedToBe vas.rule matches 0 run \
    data modify storage vas:temp dialog.actions[0].action.command set value "trigger vas.rule.runnerDiedToBe set 1"
execute if score runnerDiedToBe vas.rule matches 1 run \
    data modify storage vas:temp dialog.actions[0].action.command set value "trigger vas.rule.runnerDiedToBe set 2"
execute if score runnerDiedToBe vas.rule matches 2 run \
    data modify storage vas:temp dialog.actions[0].action.command set value "trigger vas.rule.runnerDiedToBe set 0"

function vas:rule/dialog with storage vas:temp