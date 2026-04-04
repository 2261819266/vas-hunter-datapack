execute store result bossbar vas:freeze value run \
  scoreboard players remove freezing_time vas.sys 1

execute as @a[team=hunter] run function vas:player/freeze

execute if score freezing_time vas.sys matches 1.. run return run schedule function vas:detect/schedule/freeze 1s

bossbar set vas:freeze visible false
execute as @a[team=hunter] run function vas:player/unfreeze