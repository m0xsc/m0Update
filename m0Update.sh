# !/bin/bash
# Created by mescu
echo "https://twitter.com/mescu"
echo "https://github.com/mescu"
echo "m0Update"
echo

update_system() {
    echo
    echo "This will update your system."
    echo "Your system will be restarted after the update."
    echo "Do you want to continue? [y/n]"
    read -r choice

    if [[ "$choice" == "y" ]]; then
        echo "Updating and restarting your system..."
        sleep 1

        sudo apt update && sudo apt full-upgrade -y && sudo reboot
    elif [[ "$choice" == "n" ]]; then
        echo "Are you sure you want to cancel the update process? [y/n]"
        read -r choice2
        if [[ "$choice2" == "y" ]]; then
            echo "Exiting update process."
            exit
        elif [[ "$choice2" == "n" ]]; then
            update_system
        else
            echo "Invalid choice. Exiting."
            exit 1
        fi
    else
        echo "Invalid choice. Exiting."
        exit 1
    fi
}

update_system
