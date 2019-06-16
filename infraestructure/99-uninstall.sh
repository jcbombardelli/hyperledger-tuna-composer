npm uninstall -g composer-cli composer-rest-server generator-hyperledger-composer
npm uninstall -g composer-playground

export FABRIC_VERSION=hlfv12
../../fabric-dev-servers/stopFabric.sh
../../fabric-dev-servers/teardownFabric.sh

rm -rf ../../fabric-dev-servers