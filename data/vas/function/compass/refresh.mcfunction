# function vas:message/tell {path:"/compass/refresh/"}

scoreboard players set @s vas.use.compass 0

execute if entity @s[predicate=vas:hand/tracker_mainhand] run \
    function vas:compass/refresh_mainhand
execute if entity @s[predicate=vas:hand/tracker_offhand,predicate=!vas:hand/tracker_mainhand] run \
    function vas:compass/refresh_offhand