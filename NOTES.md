


** First successful build after fork
sudo apt-get install -y libdevmapper-dev
sudo apt-get install -y libbtrfs-dev
nvm use lts/fermium
cd web
nmp install
go run builod.go ci-quick
