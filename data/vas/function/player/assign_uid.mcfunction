function vas:message/tell {path:"/player/assign_uid"}

scoreboard players add #sys vas.maxuid 1
scoreboard players operation @s vas.uid = #sys vas.maxuid