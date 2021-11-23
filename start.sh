#! /bin/bash
exec 2>&-
declare -a list
declare -i counter=0
declare -i choice

echo "Server list:"

for i in $(ls -d */)
do
	temp=$(ls ${i%%/}/*.sh)
    if [[ ${temp[*]} =~ start.sh ]]; then
		let counter++
        list+=(${i%%/})
		echo [${counter}] ${i%%/}
    fi
done

echo "Choose which server instance to start (1-$counter): "
read choice
let choice--

cd ./${list[choice]}
./start.sh ${list[choice]}