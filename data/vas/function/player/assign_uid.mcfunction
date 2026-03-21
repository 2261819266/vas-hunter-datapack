# function vas:message/tell {path:"/player/assign_uid"}

scoreboard players operation @s vas.uid = count.uid vas.sys
scoreboard players add count.uid vas.sys 1

function vas:player/store_pos

# get player name

execute summon text_display run tag @s add assigning
data modify entity @n[type=text_display, tag=assigning] text set value {selector: "@p"}

data modify storage vas:sys players[-1].name set from entity @n[type=text_display, tag=assigning] text.insertion
data modify storage vas:sys players[-1].text set from entity @n[type=text_display, tag=assigning] text

kill @n[type=text_display, tag=assigning]