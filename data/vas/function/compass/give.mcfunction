# function vas:message/tell {path:"/compass/give"}


loot give @s loot vas:tracker

execute if predicate vas:player/is_sneaking run return run function vas:compass/choose/main
function vas:compass/change/random
