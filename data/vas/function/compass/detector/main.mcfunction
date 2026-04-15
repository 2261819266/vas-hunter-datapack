execute unless entity @s[team=runner] run return fail

execute unless entity @p[distance=0.., team=hunter] run return run \
  title @s actionbar { translate: item.vas.detector.none, color: red }

execute store result storage vas:temp detector.x1 int 1 run data get entity @s Pos[0]
execute store result storage vas:temp detector.y1 int 1 run data get entity @s Pos[1]
execute store result storage vas:temp detector.z1 int 1 run data get entity @s Pos[2]

execute as @p[team=hunter] run function vas:compass/detector/get_hunter

execute store result score @s vas.detector.distance run \
  function vas:math/distance/distance with storage vas:temp detector

scoreboard players operation @s vas.detector.distance /= 100 vas.constant
scoreboard players add @s vas.detector.distance 1

title @s actionbar { translate: item.vas.detector.show, color: "light_purple", \
  with: [{score: {name: "@s", objective: "vas.detector.distance"}}] \
}

tag @s remove using_detector
