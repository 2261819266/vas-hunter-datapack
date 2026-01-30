# function vas:message/tell {path:"/compass/refresh/"}

item modify entity @s weapon.mainhand vas:tracker

# execute store result storage vas:temp refresh.uid int 1 run \
#     scoreboard players get @p[]

data modify storage vas:temp refresh.name set from entity @s SelectedItem.components."minecraft:lore"[1].extra[0].insertion
data modify storage vas:temp refresh.dimension set from entity @s Dimension

execute store result storage vas:temp refresh.uid int 1 run \
    function vas:player/get_uid_from_name with storage vas:temp refresh
execute store result storage vas:temp refresh.dimension_id int 1 run \
    function vas:dimension/get_dimension_id_from_dimension with storage vas:temp refresh

data modify storage vas:temp refresh.actionbar set from entity @s SelectedItem.components."minecraft:lore"[1]

execute unless score @s vas.focus matches 1 run function vas:compass/refresh_nearest with storage vas:temp refresh

# execute if score @s vas.focus matches 1 run function vas:compass/refresh_nearest
