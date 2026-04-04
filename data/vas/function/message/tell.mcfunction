execute unless entity @p[scores={vas.control.showCommand = 1}] run return fail

$tellraw @a[scores={vas.control.showCommand = 1}] "\u00a7d$(path) \u00a77 function has run."

return 1