# say 2

$data modify storage vas:temp crossbow.charge set from \
  entity @s $(crossbow).components."minecraft:charged_projectiles"[0]

data modify storage vas:temp crossbow.charge.components merge value {}

function vas:crossbow/return with storage vas:temp crossbow.charge

$data modify storage vas:temp crossbow.replace set from entity @s $(ender_pearl)
data modify storage vas:temp crossbow.replace.count set value 1
function vas:crossbow/replace_crossbow with storage vas:temp crossbow

$item modify entity @s weapon.$(ender_pearl_hand) { function: "set_count", add: true, count: -1}

