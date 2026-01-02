function vas:message/tell {path:"/control/use_cs"}

scoreboard players reset @s vas.cs_use

execute if entity @s[predicate=vas:hand/selector_hunter] run return run function vas:control/join_hunter
execute if entity @s[predicate=vas:hand/selector_runner] run return run function vas:control/join_runner