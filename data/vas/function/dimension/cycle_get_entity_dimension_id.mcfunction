function vas:message/tell {path:"/dimension/cycle_get_entity_dimension_id"}

execute if score #vas.get_dimension_id vas.cycle = #vas.get_dimension_id vas.cycle_end run return -1

$execute store result score #success vas.temp run function vas:dimension/check_in_dimension_id {dimension_id: $(dimension_id)}
execute if score #success vas.temp matches 1 run return run scoreboard players get #vas.get_dimension_id vas.cycle

scoreboard players add #vas.get_dimension_id vas.cycle 1
execute store result storage vas:temp get_dimension_id.dimension_id int 1 run \
    scoreboard players get #vas.get_dimension_id vas.cycle

return run function vas:dimension/cycle_get_entity_dimension_id with storage vas:temp get_dimension_id