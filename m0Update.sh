!#/bin/bash
#Created by mescu

clear

echo "https://twitter.com/m0xsc"

echo "https://github.com/m0xsc"

echo "m0Update"

function update() {

	echo

	echo "This will update your system"

	sleep 1

	echo

	echo "When it finish your system will be restarted"

	sleep 1

	echo

	echo "Do you want to continue? [y/n]"

	read choice

	if [ "$choice" = "y" ]; then

		echo "Your system is going to be updated and restarted"

		sleep 1

		sudo apt update && sudo apt full-upgrade

		sudo apt upgrade

		reboot

	fi

	if [ "$choice" = "n" ]; then 

		echo "Are you sure you want to cancel the process? [y/n]"

		read choice2

		if [ "$choice2" = "y" ]; then 

			exit

		fi

		if [ "$choice2" = "n" ]; then 

			update

		fi
fi

}

update		
