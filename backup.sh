#! /bin/bash
exec 2>&-
declare -a list
declare -i counter=0
declare -i choice

echo "Server list:"

for i in $(ls -d */)
do
	temp=$(ls ${i%%/}/*.sh)
    if [[ ${temp[*]} =~ backup.sh ]]; then
		let counter++
        list+=(${i%%/})
		echo [${counter}] ${i%%/}
    fi
done

echo "Choose which server instance to backup (1-$counter): "
read choice
let choice--

echo "Enter the Minecraft version: "
read ver

cd ./${list[choice]}
./backup.sh $ver