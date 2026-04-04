# function vas:message/tell {path:"/share/share/"}

execute store result storage vas:temp share.uid int 1 run \
    scoreboard players get @s vas.uid

data modify storage vas:temp share merge value {resource_location: "vas:temp", targetPath: "share.name"}

function vas:player/get_name with storage vas:temp share

execute if entity @s[team=hunter] run \
    data modify storage vas:temp share.team set value hunter
execute if entity @s[team=runner] run \
    data modify storage vas:temp share.team set value runner

data modify storage vas:temp share.Dimension set from entity @s Dimension

execute store result storage vas:temp share.x int 1 run data get entity @s Pos[0]
execute store result storage vas:temp share.y int 1 run data get entity @s Pos[1]
execute store result storage vas:temp share.z int 1 run data get entity @s Pos[2]

function vas:share/tell with storage vas:temp share