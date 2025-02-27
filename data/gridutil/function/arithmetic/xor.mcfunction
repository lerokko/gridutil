scoreboard players operation $_xor_output integer = $_xor_input1 integer
scoreboard players operation $_xor_output integer += $_xor_input2 integer

scoreboard players operation $_and_input1 integer = $_xor_input1 integer
scoreboard players operation $_and_input2 integer = $_xor_input2 integer
function gridutil:arithmetic/and

#bitshift left (from source translated)
scoreboard players operation $_and_output integer += $_and_output integer

scoreboard players operation $_xor_output integer -= $_and_output integer
