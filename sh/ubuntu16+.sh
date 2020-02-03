clear
echo " "
echo " "
echo "+=================================================================+"
echo "|                                                                 |
echo "|   _____    _                                   ____         _   |"
echo "|  |  __ \  (_)                                 / __ \       | |  |"
echo "|  | |__) |  _    __ _    ___    ___    _ __   | |  | |      | |  |"
echo "|  |  ___/  | |  / _` |  / _ \  / _ \  | '_ \  | |  | |  _   | |  |"
echo "|  | |      | | | (_| | |  __/ | (_) | | | | | | |__| | | |__| |  |"
echo "|  |_|      |_|  \__, |  \___|  \___/  |_| |_|  \____/   \____/   |"
echo "|                 __/ |                                           |"
echo "|                |___/                                            |"
echo "|                                                                 |"
echo "+=================================================================+"
echo " "
echo " "
echo " The following NEW packages will be installed:"
echo "   vim python3.6 python3-pip curl git docker docker-compose"
echo " If you don't want to install them, please press Ctrl-C to exit this installation."
echo "  [ + ] sleep 5"
sleep 5
echo " "

echo "  [ + ] apt-get update"
sudo apt-get update > /dev/null

echo "  [ + ] apt-get install -y vim python3-pip curl git python3.6"
sudo apt-get install -y vim python3-pip curl git python3.6 > /dev/null

echo "  [ + ] Setting up Python..."
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 100 > /dev/null
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 150 > /dev/null

echo "  [ + ] Upgrading pip..."
pip3 install --upgrade pip > /dev/null

echo "  [ + ] Installing docker-compose..."
pip install docker-compose > /dev/null
pip install docker-compose > /dev/null

echo "  [ + ] Setting up docker registry mirrors..."
sudo wget https://raw.githubusercontent.com/Pigeon-Developer/PigeonOnlineJudgeDeploy/master/docker/docker-faster.sh > /dev/null
sudo bash docker-faster.sh

echo "  Cloning into PigeonOnlineJudgeDeploy..."
git clone https://github.com/Pigeon-Developer/PigeonOnlineJudgeDeploy.git > /dev/null
cd PigeonOnlineJudgeDeploy

docker-compose up -d

clear

echo " "
echo " "
echo "+=================================================================+"
echo "|                                                                 |
echo "|   _____    _                                   ____         _   |"
echo "|  |  __ \  (_)                                 / __ \       | |  |"
echo "|  | |__) |  _    __ _    ___    ___    _ __   | |  | |      | |  |"
echo "|  |  ___/  | |  / _` |  / _ \  / _ \  | '_ \  | |  | |  _   | |  |"
echo "|  | |      | | | (_| | |  __/ | (_) | | | | | | |__| | | |__| |  |"
echo "|  |_|      |_|  \__, |  \___|  \___/  |_| |_|  \____/   \____/   |"
echo "|                 __/ |                                           |"
echo "|                |___/                                            |"
echo "|                                                                 |"
echo "+=================================================================+"
echo " "
echo "Done!"
echo " "
echo "+-----------------------------------+"
echo "|  Enjoy.                           |"
echo "|       --The Pigeon-Developer Team |"
echo "+-----------------------------------+
echo " "
echo " "
echo " "
docker-compose ps -a
echo " "
echo " "
echo " Please give us a star on Github!"
echo " "
echo " "


