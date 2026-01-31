# function vas:message/tell {path:"/compass/refresh/"}

scoreboard players set @s vas.use.compass 0

execute if predicate vas:hand/tracker_mainhand run \
    function vas:compass/update/refresh_mainhand
execute if predicate vas:hand/tracker_offhand unless predicate vas:hand/tracker_mainhand run \
    function vas:compass/update/refresh_offhand
