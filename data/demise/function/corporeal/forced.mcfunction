scoreboard players remove @s D_CorporealT 1

execute if entity @s[scores={D_CorporealT=..0}] run function demise:corporeal/lose_second

execute if entity @s[scores={D_CorporealS=10..}] run title @s actionbar [{"text":"Tangible ","color":"dark_purple"},{"score":{"name":"@s","objective":"D_CorporealM"}},{"text":":"},{"score":{"name":"@s","objective":"D_CorporealS"}}]
execute if entity @s[scores={D_CorporealS=0..9}] run title @s actionbar [{"text":"Tangible ","color":"dark_purple"},{"score":{"name":"@s","objective":"D_CorporealM"}},{"text":":0"},{"score":{"name":"@s","objective":"D_CorporealS"}}]

execute if entity @s[scores={D_CorporealM=..0,D_CorporealS=0}] run function demise:corporeal/unforce