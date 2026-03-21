# @arg x, y, z

$data modify entity @s transformation set value \
    [$(x), 0, 0, 0, $(y), 0, 0, 0, $(z), 0, 0, 0, 0, 0, 0, 1]

data modify storage vas:temp math.distance.result set from entity @s transformation.scale[0]

kill @s

return run data get storage vas:temp math.distance.result