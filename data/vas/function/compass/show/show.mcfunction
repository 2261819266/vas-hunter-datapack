# function vas:message/tell {path:"/compass/show/show/"}

scoreboard players set @s vas.use.compass 0

data remove storage vas:temp show

execute unless predicate vas:hand/tracker_offhand unless predicate vas:hand/tracker_mainhand run \
    return fail

execute if predicate vas:hand/tracker_offhand run \
    data modify storage vas:temp show.hand set value "offhand"
execute if predicate vas:hand/tracker_mainhand run \
    data modify storage vas:temp show.hand set value "mainhand"
execute if predicate vas:hand/tracker_offhand run \
    data modify storage vas:temp show.hand_ set value "equipment.offhand"
execute if predicate vas:hand/tracker_mainhand run \
    data modify storage vas:temp show.hand_ set value "SelectedItem"
execute if predicate vas:hand/tracker_offhand run \
    data modify storage vas:temp show.item set from entity @s equipment.offhand
execute if predicate vas:hand/tracker_mainhand run \
    data modify storage vas:temp show.item set from entity @s SelectedItem
execute if entity @s[team=hunter] run \
    data modify storage vas:temp show.team set value "hunter"
execute if entity @s[team=runner] run \
    data modify storage vas:temp show.team set value "runner"

execute store result storage vas:temp show.uid int 1 run \
    scoreboard players get @s vas.tracking

data modify storage vas:temp show.dimension set from entity @s Dimension

execute store result storage vas:temp show.dimension_id int 1 run \
    function vas:dimension/get_dimension_id_from_dimension with storage vas:temp show

data modify storage vas:temp show.x set from storage vas:temp show.item.components.minecraft:lodestone_tracker.target.pos[0]
data modify storage vas:temp show.y set from storage vas:temp show.item.components.minecraft:lodestone_tracker.target.pos[1]
data modify storage vas:temp show.z set from storage vas:temp show.item.components.minecraft:lodestone_tracker.target.pos[2]
data modify storage vas:temp show.name set from storage vas:temp show.item.components."minecraft:lore"[1].extra[0].insertion

function vas:compass/show/build with storage vas:temp show
