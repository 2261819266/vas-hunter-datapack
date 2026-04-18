execute store result score lobby.protect.y vas.temp run data get entity @s Pos[1]
execute if score lobby.protect.y vas.temp matches ..55 \
  positioned 0 64 0 if entity @s[distance=0..300] \
  run tp @s 0 64 0