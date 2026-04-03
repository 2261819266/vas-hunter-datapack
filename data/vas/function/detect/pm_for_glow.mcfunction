# run per minute

execute unless score process vas.sys matches 1 run return fail

execute if score glow_cooldown vas.sys matches 1.. run \
  tellraw @a[team=hunter] { translate: "info.vas.glow.tell", with: \
      [{ score: { name: glow_cooldown, objective: "vas.sys" }}], \
    color: "light_purple" }

execute if score glow_cooldown vas.sys matches 0.. run \
  scoreboard players remove glow_cooldown vas.sys 1

execute if score glow_cooldown vas.sys matches 0.. run return 0

schedule clear vas:detect/schedule/pm_for_glow

tellraw @a[team=hunter] { translate: info.vas.glow.can}
