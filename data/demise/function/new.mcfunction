tag @s add NewDemise
tag @s add DemiseLeftGame

scoreboard objectives add D_Dead deathCount
scoreboard objectives add D_Kill totalKillCount
scoreboard objectives add D_LeaveTime dummy
scoreboard objectives add D_HP health "HP"
scoreboard objectives add D_Hunger food
scoreboard objectives setdisplay below_name D_HP
scoreboard objectives add D_Leave minecraft.custom:minecraft.leave_game
scoreboard objectives add D_Timer dummy
scoreboard objectives add D_Tutorial dummy
scoreboard objectives add ghost trigger
scoreboard objectives add catalyst trigger
scoreboard objectives add D_GhostT dummy
scoreboard objectives add D_GhostS dummy
scoreboard objectives add D_GhostM dummy
scoreboard objectives add D_PKill minecraft.custom:minecraft.player_kills
scoreboard objectives add D_CorporealT dummy
scoreboard objectives add D_CorporealS dummy
scoreboard objectives add D_CorporealM dummy
scoreboard objectives add D_GhostCooldown dummy
scoreboard objectives add D_Gapple minecraft.used:minecraft.golden_apple
scoreboard objectives add D_Gapple2 minecraft.used:minecraft.enchanted_golden_apple
scoreboard objectives add D_CureT dummy
scoreboard objectives add D_CureLevel dummy
scoreboard objectives add D_Flesh minecraft.used:minecraft.rotten_flesh
scoreboard objectives add LifeTicks dummy
scoreboard objectives add LifeHours dummy
scoreboard objectives setdisplay list LifeHours

function demise:add_teams

scoreboard players set @s D_LeaveTime 0
team join D_Innocent @s

advancement grant @s only demise:story/root