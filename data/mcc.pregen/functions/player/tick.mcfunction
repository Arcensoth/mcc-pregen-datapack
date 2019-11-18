#> mcc.pregen:player/tick

execute if score @s mcc.pregencol < @s mcc.pregencols run scoreboard players set $case mcc.pregenmath 1
execute unless score @s mcc.pregencol < @s mcc.pregencols if score @s mcc.pregenrow < @s mcc.pregenrows run scoreboard players set $case mcc.pregenmath 2
execute unless score @s mcc.pregencol < @s mcc.pregencols unless score @s mcc.pregenrow < @s mcc.pregenrows run scoreboard players set $case mcc.pregenmath 3

execute if score $case mcc.pregenmath matches 1 run function mcc.pregen:player/next/col
execute if score $case mcc.pregenmath matches 2 run function mcc.pregen:player/next/row
execute if score $case mcc.pregenmath matches 3 run function mcc.pregen:player/complete
