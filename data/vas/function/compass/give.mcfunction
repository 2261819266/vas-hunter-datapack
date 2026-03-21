function vas:message/tell {path:"/compass/give"}

loot give @s loot vas:tracker

function vas:compass/change/random

function vas:compass/refresh

execute if predicate vas:player/is_sneaking run function vas:compass/choose/main
