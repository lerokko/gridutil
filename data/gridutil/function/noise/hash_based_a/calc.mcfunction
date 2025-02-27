# Credit to @Suyarumi for the implementation of AND and XOR
# https://qiita.com/Suyarumi/items/08f5f999570d1e9cca2b#and%E6%BC%94%E7%AE%97

scoreboard players set $var_a integer 104729
scoreboard players set $var_b integer 325269
scoreboard players set $var_c integer 512403

#scoreboard players set $seed integer 123456789
scoreboard players set $acc integer 0
scoreboard players set $noise integer 0
scoreboard players set $bit_shft_noise integer 0

#scoreboard players set $cell_x integer 0
#scoreboard players set $cell_z integer 0


#n = (x * a + y * b + seed * c)
#     x * a
scoreboard players operation $acc integer = $cell_x integer
scoreboard players operation $acc integer *= $var_a integer
scoreboard players operation $noise integer = $acc integer

#n = (x * a + y * b + seed * c)
#           + y * b
scoreboard players operation $acc integer = $cell_z integer
scoreboard players operation $acc integer *= $var_b integer
scoreboard players operation $noise integer += $acc integer

#n = (x * a + y * b + seed * c)
#                   + seed * c
scoreboard players operation $acc integer = $seed integer
scoreboard players operation $acc integer *= $var_c integer
scoreboard players operation $noise integer += $acc integer

#divide $noise by 65536 (equivalent to bitshift of 16)
scoreboard players operation $bit_shft_noise integer = $noise integer
scoreboard players set $temp_const integer 65536
scoreboard players operation $bit_shft_noise integer /= $temp_const integer

#bitwise divided bit-shifted noise with un-bit-shifted noise
scoreboard players operation $_xor_input1 integer = $noise integer
scoreboard players operation $_xor_input2 integer = $bit_shft_noise integer
function gridutil:arithmetic/xor
scoreboard players operation $noise integer = $_xor_output integer

# multiply by 31337
scoreboard players set $temp_const integer 31337
scoreboard players operation $noise integer *= $temp_const integer

#divide $noise by 127 (equivalent to bitshift of 7)
scoreboard players operation $bit_shft_noise integer = $noise integer
scoreboard players set $temp_const integer 128
scoreboard players operation $bit_shft_noise integer /= $temp_const integer

#bitwise divided bit-shifted noise with un-bit-shifted noise
scoreboard players operation $_xor_input1 integer = $noise integer
scoreboard players operation $_xor_input2 integer = $bit_shft_noise integer
function gridutil:arithmetic/xor
scoreboard players operation $noise integer = $_xor_output integer

# multiply by 991
scoreboard players set $temp_const integer 991
scoreboard players operation $noise integer *= $temp_const integer

#divide $noise by 65536 (equivalent to bitshift of 16)
scoreboard players operation $bit_shft_noise integer = $noise integer
scoreboard players set $temp_const integer 65536
scoreboard players operation $bit_shft_noise integer /= $temp_const integer

#bitwise divided bit-shifted noise with un-bit-shifted noise
scoreboard players operation $_xor_input1 integer = $noise integer
scoreboard players operation $_xor_input2 integer = $bit_shft_noise integer
function gridutil:arithmetic/xor
scoreboard players operation $noise integer = $_xor_output integer