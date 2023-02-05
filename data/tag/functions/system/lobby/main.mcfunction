# LASERTAG lobby


# mode
## 0: solo
## 1: teams
## spawn display
execute if score mode global matches 0 run data merge block 3 151 15 {Color:"black",Text3:'{"text":"SOLOS"}',Text2:'{"text":"MODE:"}',GlowingText:1b}
execute if score mode global matches 1 run data merge block 3 151 15 {Color:"black",Text3:'{"text":"TEAMS"}',Text2:'{"text":"MODE:"}',GlowingText:1b}

# map
## -1: test
##  0: default
## spawn display
execute if score map global matches -1 run data merge block -3 151 15 {Color:"black",Text3:'{"text":"TEST","color":"light_purple"}',Text2:'{"text":"MAP:"}',GlowingText:1b}
execute if score map global matches 0 run data merge block -3 151 15 {Color:"black",Text3:'{"text":"DEFAULT (WIP)"}',Text2:'{"text":"MAP:"}',GlowingText:1b}

# button reset
## deprecated i think?
execute as @e[tag=button_reset] at @s if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[powered=false]
execute as @e[tag=button_reset] at @s if block ~ ~ ~ spruce_button[powered=true] run setblock ~ ~ ~ spruce_button[powered=false]
execute as @e[tag=button_reset] at @s if block ~ ~ ~ birch_button[powered=true] run setblock ~ ~ ~ birch_button[powered=false]