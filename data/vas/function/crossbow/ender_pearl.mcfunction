# say 1

data modify storage vas:temp crossbow.ender_pearl set from entity @s

execute summon ender_pearl run data modify entity @s {} \
  merge from storage vas:temp crossbow.ender_pearl

kill @s