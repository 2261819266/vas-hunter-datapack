scoreboard players set @s vas.success 0
scoreboard players set #i vas.temp 0

say start

execute at @s in minecraft:overworld run spreadplayers 0 0 0 16000 false @s

function vas:search/search


execute at @s in minecraft:overworld store success score @s vas.success run \
  spreadplayers ~ ~ 0 1 false @s
execute if score @s vas.success = #i vas.temp run say fail 1
execute at @s if score @s vas.success = #i vas.temp in minecraft:overworld store success score @s vas.success run \
  spreadplayers ~ ~ 0 10 false @s
execute if score @s vas.success = #i vas.temp run say fail 10
execute at @s if score @s vas.success = #i vas.temp in minecraft:overworld store success score @s vas.success run \
  spreadplayers ~ ~ 0 20 false @s
execute if score @s vas.success = #i vas.temp run say fail 20
execute at @s if score @s vas.success = #i vas.temp in minecraft:overworld store success score @s vas.success run \
  spreadplayers ~ ~ 0 40 false @s
execute if score @s vas.success = #i vas.temp run say fail 40
execute at @s if score @s vas.success = #i vas.temp in minecraft:overworld store success score @s vas.success run \
  spreadplayers ~ ~ 0 60 false @s
execute if score @s vas.success = #i vas.temp run say fail 60
execute at @s if score @s vas.success = #i vas.temp in minecraft:overworld store success score @s vas.success run \
  return run function vas:search/new_place
say success

