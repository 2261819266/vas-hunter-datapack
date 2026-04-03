advancement revoke @a only vas:detect/hunter_killed_by_runner
# say 1

# give @s golden_apple 5
# tag @s add can_have_supply
execute if score process vas.sys matches 1 if score time vas.sys > supply_time vas.rule run \
  scoreboard players operation @s vas.supply = supply.count vas.rule
