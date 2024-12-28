// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";


contract StorageFactory {

    SimpleStorage[] public listofsimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofsimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listofsimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256 ) {
        SimpleStorage mySimpleStorage = listofsimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }

}