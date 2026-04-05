function vas:message/tell {path:"/search/to_top/"}

execute if block ~ ~ ~ #vas:cannot_stand positioned ~ ~-1 ~ run \
  return run function vas:search/to_top

tp @s ~ ~1 ~
fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:grass_block replace #minecraft:replaceable
setblock ~ ~ ~ minecraft:bedrock

fill ~-1 ~1 ~-1 ~1 ~2 ~1 minecraft:air

# fill ~-1 ~1 ~-1 ~1 ~2 ~1 air