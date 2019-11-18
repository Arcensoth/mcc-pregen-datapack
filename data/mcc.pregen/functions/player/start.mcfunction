#> mcc.pregen:player/start

tellraw @s [{"text": "[MCC Pregen] Starting pregen...", "color": "aqua"}]

scoreboard players operation @s mcc.pregenrows = $rows mcc.pregen
scoreboard players operation @s mcc.pregencols = $cols mcc.pregen
scoreboard players set @s mcc.pregenrow 1
scoreboard players set @s mcc.pregencol 1
tag @s add mcc.pregen
