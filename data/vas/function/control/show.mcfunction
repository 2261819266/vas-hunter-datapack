function vas:message/tell {path:"/control/show"}

tellraw @s [{translate: "control.vas.title", color: light_purple, italic: true, bold: true}]


tellraw @s [{translate: "control.vas.select", extra: [\
    "  ", \
    {translate:"team.vas.hunter", color:red, \
        click_event:{action:"run_command", command: "trigger vas.join.hunter"}, \
        hover_event:{action: "show_text", value: {translate: "hover.vas.join.hunter"}}}, \
    " ", \
    {translate: "team.vas.runner", color: green, \
        click_event:{action:"run_command", command: "trigger vas.join.runner"}, \
        hover_event:{action: "show_text", value: {translate: "hover.vas.join.runner"}}} \
]}]

