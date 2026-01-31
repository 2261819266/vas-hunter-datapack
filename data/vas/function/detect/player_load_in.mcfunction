# function vas:message/tell {path:"/detect/player_load_in"}

execute if score @s vas.uid matches 0.. run return fail

function vas:player/assign_uid
function vas:detect/changed_dimension
function vas:detect/inventory_changed

# function vas:control/show