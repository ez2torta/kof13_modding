@ECHO OFF
setlocal enabledelayedexpansion
for %%f in (input_lua/*.lua) do (
	echo "UnXORing /%%f"
  python ./xor.py -i "input_lua/%%f"  -o "unxored_lua/%%f"
)

for %%f in (unxored_lua/*.lua) do (
	echo "Decompiling %%f"
	java -jar .\unluac_2020_05_11.jar "unxored_lua/%%f"  > "decompiled_lua/%%f"
)