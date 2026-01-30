# function vas:message/tell {path:"/player/assign_uid"}

scoreboard players operation @s vas.uid = #sys vas.count.uid
scoreboard players add #sys vas.count.uid 1

function vas:player/store_pos

# get player name

summon text_display ~ ~ ~
data modify entity @n[type=text_display] text set value {selector: "@p"}

data modify storage vas:sys players[-1].name set from entity @n[type=text_display] text.insertion

kill @n[type=text_display]