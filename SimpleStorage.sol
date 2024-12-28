// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint256 public My_Date_of_birth;

    struct friends{
        string name;
        uint256 Date_of_birth;
    }

    friends[] public listOfFriends;
    mapping(string => uint256) public nameAndDOB;


    function store(uint256 _My_Date_of_birth) public virtual  {
        My_Date_of_birth = _My_Date_of_birth;
    } 

    function retrieve() public view returns(uint256) {
        return My_Date_of_birth;
    }

    function addperson(string memory _name, uint256  _Date_of_birth) public {
        listOfFriends.push(friends(_name, _Date_of_birth));
        nameAndDOB[_name] = _Date_of_birth;
    }  
    
    
}