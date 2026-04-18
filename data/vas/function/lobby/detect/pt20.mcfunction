function vas:lobby/protect

execute positioned 0 64 0 unless entity @s[distance=0..300] run return 0

effect give @s resistance 2 5 true
effect give @s saturation 2 5 true

  
execute as @e[type=mannequin] run function vas:lobby/mannequin