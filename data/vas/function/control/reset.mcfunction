# function vas:message/tell {path:"/control/reset/"}

execute if score process vas.sys matches 1 run return run tellraw @s {translate: "info.vas.reset.fail"}

difficulty normal

execute at @s in minecraft:overworld run spreadplayers ~ ~ 0 20 false @s

function vas:search/new_place
tp @a @s
execute at @s run setworldspawn
execute at @s run spawnpoint @a
function vas:control/recover_all

tellraw @a ["\u00a77[",{"selector":"@a"},"\u00a77] "]

data remove storage vas:sys players[].Pos