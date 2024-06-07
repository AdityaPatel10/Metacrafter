// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
contract SimpleContract {
    //State Variables
    string public name;
    uint public uid;
    bool public myBool;
    address public myAdd;

    // Setter Functions
    function setName(string memory _name) public {
        name = _name;
    }

    function setUID(uint _uid) public {
        uid = _uid;
    }

    function setMyBoolean(bool _myBool) public {
        myBool = _myBool;
    }

    function setMyAdd(address _myAdd) public {
        myAdd = _myAdd;
    }

    // Getter Functions
    function getName() public view returns (string memory) {
        return name;
    }

    function getUID() public view returns (uint) {
        return uid;
    }

    function getMyBoolean() public view returns (bool) {
        return myBool;
    }

    function getMyAdd() public view returns (address) {
        return myAdd;
    }
}