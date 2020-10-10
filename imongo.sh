sudo apt update
sudo apt install -y mongodb
sudo mkdir /data
sudo mkdir /data/db
sudo chown $USER /data/db
sudo systemctl start mongodb
sudo systemctl status mongodb
