function vas:message/tell {path:"/player/assign_uid"}

scoreboard players operation @s vas.uid = #sys vas.count.uid
scoreboard players add #sys vas.count.uid 1