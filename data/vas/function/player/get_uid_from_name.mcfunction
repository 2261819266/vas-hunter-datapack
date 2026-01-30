function vas:message/tell {path:"/player/get_uid_from_name/"}

# @arg name

$execute unless entity @a[name=$(name)] run return -1

$return run execute as @a[name=$(name)] run scoreboard players get @s vas.uid