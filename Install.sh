# Install fortume mod and cowsay
sudo apt-get update
sudo apt install cowsay fortune-mod -y

#Install speedtest cli
sudo apt-get install curl -y
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest

#Update alles
sudo apt-get upgrade -y

#Bash_profile aanzetten
curl -o .bash_profile https://raw.githubusercontent.com/wtb04/VM-stuff/main/.bash_profile
