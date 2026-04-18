# function vas:message/tell {path:"/control/fail"}

execute unless score process vas.sys matches 1 run return fail

title @a title {translate: title.vas.win}

scoreboard players set process vas.sys 0

advancement revoke @s only vas:detect/kill_dragon