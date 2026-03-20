# function vas:message/tell {path:"/compass/show/build/"}

data modify storage vas:temp show.actionbar set from storage vas:temp show.item.components."minecraft:lore"[1]

# data modify storage vas:temp show.actionbar.extra append value { translate: info.vas.compass.tip }

$execute if score compass.xz vas.rule matches 1 run \
    data modify storage vas:temp show.actionbar.extra append value " x: $(x) z: $(z)"

$execute if score compass.y vas.rule matches 1 run \
    data modify storage vas:temp show.actionbar.extra append value " y: $(y) "

$execute if score compass.dimension vas.rule matches 1 run \
    data modify storage vas:temp show.actionbar.extra append from entity @a[name=$(name), limit=1] Dimension

function vas:compass/show/title with storage vas:temp show