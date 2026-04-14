$item modify entity @s weapon.$(crossbow_hand) { \
  "function": "set_components", \
  "components": { \
    "charged_projectiles": [$(replace)] \
  } \
}

$item modify entity @s weapon.$(crossbow_hand) vas:crossbow_model