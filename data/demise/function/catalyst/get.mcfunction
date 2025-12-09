tag @s add Catalyst

tellraw @s[tag=!KnowsCatalyst] {"text":"You've acquired the nether star and can use it as a materialization catalyst. Use /trigger catalyst to force nearby demons to materialize, enabling you to kill them and harness their greatest power.","color":"dark_purple"}
tag @s add KnowsCatalyst

scoreboard players enable @s catalyst