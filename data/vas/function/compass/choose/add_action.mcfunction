function vas:message/tell {path:"/compass/choose/add_action/"}

execute unless data storage vas:temp choose.list[0] run return fail

data modify storage vas:temp choose.dialog.actions append value { \
    "label": "name", \
    "action": { \
        "type": "run_command", \
        "command": "trigger vas.tracking set 0" \
    } \
} 

data modify storage vas:temp choose.dialog.actions[-1].label set from storage vas:temp choose.list[0]
data modify storage vas:temp choose.add.name set from storage vas:temp choose.list[0].insertion
execute store result storage vas:temp choose.add.uid int 1 run \
    function vas:player/get_uid_from_name with storage vas:temp choose.add

function vas:compass/choose/add_action_command with storage vas:temp choose.add

data remove storage vas:temp choose.list[0]
data remove storage vas:temp choose.list[0]

function vas:compass/choose/add_action with storage vas:temp choose