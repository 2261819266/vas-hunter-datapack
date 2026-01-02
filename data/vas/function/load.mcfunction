tellraw @a "\u00a7aThe vas-hunter-datapack has been loaded!"

scoreboard objectives add showCommand dummy
execute unless score #vas showCommand matches 0..1 run \
    scoreboard players set #vas showCommand 0

gamerule locator_bar false