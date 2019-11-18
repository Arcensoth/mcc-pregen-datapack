#> mcc.pregen:player/next/col

scoreboard players set $2 mcc.pregenmath 2
scoreboard players operation @s mcc.pregenmath = @s mcc.pregenrow
scoreboard players operation @s mcc.pregenmath %= $2 mcc.pregenmath

execute if score @s mcc.pregenmath matches 1.. run function mcc.pregen:player/next/col/pos
execute unless score @s mcc.pregenmath matches 1.. run function mcc.pregen:player/next/col/neg

scoreboard players add @s mcc.pregencol 1
