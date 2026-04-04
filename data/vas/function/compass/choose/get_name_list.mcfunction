$data modify entity @s text set value \
    {selector: "@a[tag=!building_choice, predicate=vas:player/can_be_tracked_by_$(team)]"}

$execute store result score choose.canTrack vas.temp run \
    execute if entity @a[tag=!building_choice, predicate=vas:player/can_be_tracked_by_$(team)]

# tellraw @p {score: {name: "choose.canTrack", objective: "vas.temp"}}

execute if score choose.canTrack vas.temp matches 0 run \
    return run tellraw @p {translate: info.vas.choose.noTrack}

data remove storage vas:temp choose.list

execute if score choose.canTrack vas.temp matches 2.. run \
data modify storage vas:temp choose.list set from entity @s text.extra

execute if score choose.canTrack vas.temp matches 1 run \
    data modify storage vas:temp choose.list append from entity @s text

kill @s