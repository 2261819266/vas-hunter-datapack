# function vas:message/tell {path:"/compass/give"}

execute if predicate vas:player/can_have_compass run \
  loot give @s loot vas:tracker

execute if predicate vas:player/is_sneaking run return run function vas:compass/choose/main
function vas:compass/change/random

execute if score compass.detector vas.rule matches 1 \
  if entity @s[team=runner] run loot give @s loot vas:detector