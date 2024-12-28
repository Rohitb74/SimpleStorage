// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import{SimpleStorage} from "SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {

    function store(uint256 _newDOB) public override {
        My_Date_of_birth = _newDOB + 5;
    }
}