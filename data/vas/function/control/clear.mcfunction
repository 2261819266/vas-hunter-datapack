function vas:message/tell {path:"/control/clear"}

clear @s *[custom_data~{team_need:0b}]

kill @e[nbt={Item:{components:{"minecraft:custom_data":{"need_killed":1b}}}}]