execute unless score process vas.sys matches 1 run return run tellraw @s { translate: info.vas.glow.fail.process }

execute if entity @s[team=!hunter] run return run tellraw @s { translate: info.vas.glow.fail.team }

execute if score glow_cooldown vas.sys matches 0.. run return run tellraw @s { translate: info.vas.glow.fail.time}

$effect give @a[team=runner] glowing $(glow_time) 0 true
tellraw @a { translate: info.vas.glow.success, color: light_purple, with: [{ score: { name: glow_time, objective: "vas.rule" }}] }

scoreboard players operation glow_cooldown vas.sys = glow_cooldown vas.rule
function vas:detect/schedule/pm_for_glow