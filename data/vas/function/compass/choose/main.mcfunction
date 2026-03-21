tag @s add building_choice

execute if entity @s[team=hunter] run data modify storage vas:temp choose.team set value hunter
execute if entity @s[team=runner] run data modify storage vas:temp choose.team set value runner

execute summon text_display run function vas:compass/choose/get_name_list with storage vas:temp choose

execute unless data storage vas:temp choose.list run return fail

data modify storage vas:temp choose.dialog set value { \
    "type": "multi_action", \
    "title": { \
        "translate": "dialog.vas.choose.title" \
    }, \
    "actions": [], \
    "columns": 1 \
}

function vas:compass/choose/add_action with storage vas:temp choose

function vas:compass/choose/dialog with storage vas:temp choose