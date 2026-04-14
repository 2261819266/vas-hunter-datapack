# say 1
advancement revoke @s only vas:detect/using_crossbow_with_ender_pearl

data remove storage vas:temp crossbow

execute if predicate vas:hand/ender_pearl_crossbow run return fail

execute if data entity @s SelectedItem.components."minecraft:charged_projectiles" run \
  function vas:crossbow/mainhand
execute if data entity @s equipment.offhand.components."minecraft:charged_projectiles" run \
  function vas:crossbow/offhand

execute unless data storage vas:temp crossbow run return 1

function vas:crossbow/build with storage vas:temp crossbow