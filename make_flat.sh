#!/usr/bin/env bash

#pip3 install solidity-flattener --no-cache-dir -U
#sudo add-apt-repository ppa:ethereum/ethereum
#sudo apt-get update
#sudo apt-get install solc
rm -rf flat/*
solidity_flattener contracts/KeysManager.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/KeysManager_flat.sol
solidity_flattener contracts/PoaNetworkConsensus.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/PoaNetworkConsensus_flat.sol
solidity_flattener contracts/VotingToChangeKeys.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/VotingToChangeKeys_flat.sol
solidity_flattener contracts/VotingToChangeMinThreshold.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/VotingToChangeMinThreshold_flat.sol
solidity_flattener contracts/ValidatorMetadata.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/ValidatorMetadata_flat.sol
solidity_flattener contracts/ProxyStorage.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/ProxyStorage_flat.sol
solidity_flattener contracts/BallotsStorage.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/BallotsStorage_flat.sol
solidity_flattener contracts/VotingToChangeProxyAddress.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/VotingToChangeProxyAddress_flat.sol
solidity_flattener contracts/eternal-storage/EternalStorageProxy.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/EternalStorageProxy_flat.sol
solidity_flattener contracts/BlockReward.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/BlockReward_flat.sol
solidity_flattener contracts/EmissionFunds.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/EmissionFunds_flat.sol
solidity_flattener contracts/VotingToManageEmissionFunds.sol | sed "1s/.*/pragma solidity ^0.4.23;/" > flat/VotingToManageEmissionFunds_flat.sol