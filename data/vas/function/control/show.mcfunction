function vas:message/tell {path:"/control/show"}

tellraw @s [{translate: control.vas.title, color: light_purple, italic: true, bold: true}]


tellraw @s [{translate: control.vas.select, extra: [\
    "  ", \
    {translate: team.vas.hunter, \
        click_event: {action: "run_command", command: "trigger vas.join.hunter"}, \
        hover_event: {action: "show_text", value: {translate: hover.vas.join.hunter}}}, \
    " ", \
    {translate: team.vas.runner, \
        click_event: {action: "run_command", command: "trigger vas.join.runner"}, \
        hover_event: {action: "show_text", value: {translate: hover.vas.join.runner}}}, \
    " ", \
    {translate: team.vas.leave, \
        click_event: {action: "run_command", command: "trigger vas.join.leave"}, \
        hover_event: {action: "show_text", value: {translate: hover.vas.join.leave}}} \
]}]

tellraw @s [{translate: control.vas.reshow, click_event: {action: "run_command", command: "trigger vas.control.reshow"}}, \
    {translate: control.vas.changeSettings, click_event: {action: "run_command", command: "trigger vas.control.changeSettings"}}]

tellraw @s [{translate: control.vas.showCommand, click_event: {action: "run_command", command: "trigger vas.control.showCommand set 1"}}, \
    {translate: control.vas.hideCommand, click_event: {action: "run_command", command: "trigger vas.control.showCommand set 0"}}, ]