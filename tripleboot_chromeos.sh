#!/bin/sh
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y # since I installed it during fixing win10+pop os dual boot
# if you came from Ubuntu 20 LTS series you need enabled universe also multiverse repository
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt update
sudo apt install pv
sudo apt install cgpt
sudo apt install gparted
# sudo apt install grub-customizer # since I installed it during fixing win10+pop os dual boot
sudo gparted
echo "Please enter partition name for Chrome OS multi boot install. For e.g. sda5";
read partition
sudo sfdisk -l /dev/$partition
size=$(sudo fdisk -l /dev/$partition | awk '$1=="Disk" && $2 ~ /^\/dev\/.*/ {print int($3)}')
echo $size
while true; do
    read -p "Do you wish to format and install chrome os on $partition?(type yes to continue)" yn
    case $yn in
        [Yy]* ) echo "Ok, Proceeding installation on $partition";
                mkdir -p ~/tmpmount;
                sudo mount /dev/$partition ~/tmpmount;
                sudo bash chromeos-install.sh -src rammus_recovery.bin -dst ~/tmpmount/chromeos.img -s $(expr $size - 2);
                sudo umount ~/tmpmount;
				echo "Copy the above grub menu entry in grub customizer";
                sudo grub-customizer;
                break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
else
    echo "You are Offline. Please connect to the internet before running installation"
fi
