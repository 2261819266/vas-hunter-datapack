function vas:message/tell {path:"/control/show"}

tellraw @s [{translate: control.vas.title, color: light_purple, italic: true, bold: true}]


tellraw @s [{translate: control.vas.select, extra: [ \
    {   translate: control.vas.select.hunter, \
        click_event: {action: "run_command", command: "trigger vas.join.hunter"}, \
        hover_event: {action: "show_text", value: {translate: hover.vas.join.hunter}}}, \
    {   translate: control.vas.select.runner, \
        click_event: {action: "run_command", command: "trigger vas.join.runner"}, \
        hover_event: {action: "show_text", value: {translate: hover.vas.join.runner}}}, \
    {   translate: control.vas.select.leave, \
        click_event: {action: "run_command", command: "trigger vas.join.leave"}, \
        hover_event: {action: "show_text", value: {translate: hover.vas.join.leave}}} \
]}]

tellraw @s [ \
    {   translate: control.vas.reshow, \
        hover_event: {action: "show_text", value: {translate: "hover.vas.join.reshow"}}, \
        click_event: {action: "run_command", command: "trigger vas.control.reshow"}}, \
    {   translate: control.vas.changeSettings, \
        hover_event: {action: "show_text", value: {translate: "hover.vas.join.changeSettings"}}, \
        click_event: {action: "run_command", command: "trigger vas.control.changeSettings"}}\
]

tellraw @s [ \
    {   translate: control.vas.showCommand, \
        hover_event: {action: "show_text", value: {translate: "hover.vas.join.showCommand"}}, \
        click_event: {action: "run_command", command: "trigger vas.control.showCommand set 1"}}, \
    {   translate: control.vas.hideCommand, \
        hover_event: {action: "show_text", value: {translate: "hover.vas.join.hideCommand"}}, \
        click_event: {action: "run_command", command: "trigger vas.control.showCommand set 0"}}, \
]