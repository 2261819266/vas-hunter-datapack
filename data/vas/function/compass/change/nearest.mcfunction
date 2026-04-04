# function vas:message/tell {path:"/compass/change/nearest/"}

function vas:compass/refresh
tag @s add using_compass
execute store result score @s vas.tracking run \
function vas:compass/update/select_nearest_player with storage vas:temp refresh
tag @s remove using_compass
function vas:compass/refresh
