tag @s add Established

setworldspawn ~ ~ ~

gamerule respawn_radius 150
gamerule send_command_feedback false
gamerule players_sleeping_percentage 0
gamerule reduced_debug_info true
execute in overworld run spreadplayers ~ ~ 30 150 false @a

tellraw @a {"text":"World center set.","color":"aqua"}