$data modify storage vas:temp dialog.actions append value { \
    "label": [ \
        { \
            "translate": "dialog.vas.rule.$(rule)" \
        }, \
        { \
            "translate": "dialog.vas.rule.yes" \
        } \
    ], \
    "action": { \
        "type": "run_command", \
        "command": "trigger vas.rule.$(rule) set 0" \
    }, \
    "width": 300 \
} 

$execute if score $(rule) vas.rule matches 0 run \
    data modify storage vas:temp dialog.actions[-1].label[1].translate set value dialog.vas.rule.no
$execute if score $(rule) vas.rule matches 0 run \
    data modify storage vas:temp dialog.actions[-1].action.command set value "trigger vas.rule.$(rule) set 1"