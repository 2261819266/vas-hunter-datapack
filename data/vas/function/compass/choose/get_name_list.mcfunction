$data modify entity @s text set value \
    {selector: "@a[tag=!building_choice, predicate=vas:player/can_be_tracked_by_$(team)]"}

data modify storage vas:temp choose.list set from entity @s text.extra

