function vas:message/tell {path:"/control/reset/"}


execute at @s in minecraft:overworld run spreadplayers ~ ~ 0 20 false @s

function vas:search/new_place
tp @a @s
execute at @s run setworldspawn
function vas:control/recover_all

tellraw @a ["\u00a77[",{"selector":"@a"},"\u00a77] "]