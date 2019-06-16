cd ../composer

PROJECT_NAME=mytuna@0.0.1.bna
CARD_NAME=PeerAdmin@hlfv1

composer archive create -t dir -n . -a ${PROJECT_NAME}

composer network install --card ${CARD_NAME} --archiveFile ${PROJECT_NAME}

#Inicializar o chaincode no Hyperledger Fabric peers
composer network start --card ${CARD_NAME} --networkAdmin admin --networkAdminEnrollSecret adminpw --networkName tuna-network --networkVersion 0.0.1


#Isto vai criar um card, que deve ser importado:
composer card import --file admin@tuna-network.card

#Este card é utilizado no projeto / business network.
#Para testa-lo:

composer network ping --card admin@tuna-network
