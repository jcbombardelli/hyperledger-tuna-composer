sudo apt update
sudo apt install build-essential -y

# Em caso de problemas com permissionamento de leitura e escrita
# dentro do NPM, descomente as quatro linhas abaixo

# mkdir ~/.npm-global
# npm config set prefix '~/.npm-global'
# export PATH=~/.npm-global/bin:$PATH
# source ~/.profile

npm install -g composer-cli@0.20
npm install -g composer-rest-server@0.20
npm install -g generator-hyperledger-composer@0.20
npm install -g yo
npm install -g composer-playground@0.20

mkdir ../../fabric-dev-servers && cd ../../fabric-dev-servers

curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz
tar -xvf fabric-dev-servers.tar.gz