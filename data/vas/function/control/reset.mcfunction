# function vas:message/tell {path:"/control/reset/"}

execute if score process vas.sys matches 1 run return run tellraw @s {translate: "info.vas.reset.fail"}

#delete dimensions (using delete mod and minecraft version upper to 26.1
function vas:dimension/delete_minecraft

execute in minecraft:overworld run forceload remove all
execute in minecraft:the_nether run forceload remove all
execute in minecraft:the_end run forceload remove all
execute in minecraft:the_end run forceload add -32 -32 32 32

difficulty normal

# execute at @s in minecraft:overworld run spreadplayers ~ ~ 0 20 false @s

execute at @s run function vas:search/new_place
tp @a @s
execute at @s run setworldspawn
execute at @s run spawnpoint @a
function vas:control/recover_all
schedule function vas:control/recover_all 2s
schedule function vas:control/recover_all 4s

tellraw @a ["\u00a77[",{"selector":"@a"},"\u00a77] "]

data remove storage vas:sys players[].Pos
