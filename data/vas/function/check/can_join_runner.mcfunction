function vas:message/tell {path:"/check/can_join_runner"}

# return -1 : has been in the team; 0 : can't join in the team; 1 : can join the team

execute if entity @s[team=runner] run return -1 
execute if score #sys vas.process matches 1 run return 0

return 1