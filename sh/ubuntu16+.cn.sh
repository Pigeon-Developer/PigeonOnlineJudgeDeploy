clear
echo 
echo "[ + ] apt-get update"
sudo apt-get update 
echo "[ + ] apt-get install -y vim python3-pip curl git python3.7"
sudo apt-get install -y vim python3-pip curl git python3.7
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 100
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 150
pip3 install --upgrade pip
pip install docker-compose
sudo curl -sSL https://get.daocloud.io/docker | sh
sudo wget https://raw.githubusercontent.com/Pigeon-Developer/PigeonOnlineJudgeDeploy/master/docker/docker-faster.sh
sudo bash docker-faster.sh
git clone https://github.com/Pigeon-Developer/PigeonOnlineJudgeDeploy.git
cd PigeonOnlineJudgeDeploy
docker-compose up -d
echo 
