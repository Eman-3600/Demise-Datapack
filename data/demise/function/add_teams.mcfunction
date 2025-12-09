team add D_Living "Living"
team modify D_Living color green
team modify D_Living seeFriendlyInvisibles false
team add D_Demon "Demon"
team modify D_Demon color dark_red
team modify D_Demon seeFriendlyInvisibles false
team modify D_Demon nametagVisibility never
team modify D_Demon deathMessageVisibility never
team add D_MaterialDemon "Materialized Demon"
team modify D_MaterialDemon color dark_purple
team modify D_MaterialDemon nametagVisibility never
team modify D_MaterialDemon seeFriendlyInvisibles false
team add D_Curing "Curing Demon"
team modify D_Curing color gold
team modify D_Curing seeFriendlyInvisibles false
team add D_Innocent "New"
team modify D_Innocent color dark_aqua

team join D_Living @a[team=!D_Innocent,tag=!Demon]
team join D_Demon @a[team=!D_Innocent,tag=Demon,tag=!Corporeal,tag=!Curing]
team join D_MaterialDemon @a[team=!D_Innocent,tag=Demon,tag=Corporeal,tag=!Curing]
team join D_Curing @a[team=!D_Innocent,tag=Curing]