function vas:message/tell {path:"/player/store_pos"}

# store position : vas:sys 
# player[player_uid][$dimension_id$]: {dimension: "", pos: []}

execute store result storage vas:temp store_pos.dimension_id int 1 run \
    function vas:dimension/get_entity_dimension_id
execute store result storage vas:temp store_pos.uid int 1 run \
    function vas:player/get_uid

function vas:player/write_pos with storage vas:temp store_pos